var unzipper = require("unzipper");
var fs = require("fs");

exports('HandleHttpRequest', (dest, callback, method, data, headers) => {
    //emit("SonoranCAD::core:writeLog", "debug", "[http] to: " + dest + " - data: " + dest, JSON.stringify(data));
    const urlObj = url.parse(dest)
    const options = {
        hostname: urlObj.hostname,
        path: urlObj.pathname,
        method: method,
        headers: headers
    }
    if (method == "POST") {
        options.headers['Content-Type'] = 'application/json'
    }
    else if (method != "GET") {
        console.error("Invalid request. Only GET/POST supported. Method: " + method);
        callback(500, "", {});
        return;
    }
    options.headers['X-SonoranCAD-Version'] = GetResourceMetadata(GetCurrentResourceName(), "version", 0)
    const req = https.request(options, (res) => {
        let output = "";
        res.on('data', (d) => {
            output += d.toString()
        }),
        res.on('end', () => {
            callback(res.statusCode, output, res.headers);
        })
      })
        
    req.on('error', (error) => {
        console.error("HTTP error caught: " + JSON.stringify(error));
    })
    if (method == "POST") {
        req.write(data);
    }
    req.end();
});

exports('UnzipFile', (file, dest) => {
    fs.createReadStream(file).pipe(unzipper.Extract({ path: dest}));
});

function deleteDirR(dir) {
	fs.rmdir(dir, {recursive:true}, (err) => {
        if (err) {
            console.log(err)
            return false, err;
        }
    });
    return true;
}

exports('UnzipFolder', (file, name, dest) => {
    let firstDir = null;
	let hasStreamFolder = false;
	const rootPath = GetResourcePath(GetCurrentResourceName());
	const streamPath = rootPath + "/stream/" + name + "/";
	fs.createReadStream(file).pipe(unzipper.Parse())
	.on('entry', function(entry) {
		var fileName = entry.path;
		const type = entry.type;
		if (type == "Directory") {
			if (fileName.includes("stream") && !hasStreamFolder) {
				hasStreamFolder = true;
				deleteDirR(streamPath);
			}
			if (firstDir == null) {
				firstDir = fileName;
			}
			else {
				fileName = fileName.replace(firstDir, "");
				if (!fs.existsSync(dest + fileName)) {
					fs.mkdirSync(dest + fileName);
				}
			}
		}
		if (type == "File") {
			fileName = fileName.replace(firstDir, "");
			let finalPath = dest + fileName;
			if (fileName.includes("stream")) {
				let file = fileName.replace(/^.*[\\\/]/, '');
                finalPath = `${rootPath}/stream/${name}/${file}`;
				if (!fs.existsSync(`${rootPath}/stream/${name}/`)) {
					fs.mkdirSync(`${rootPath}/stream/${name}/`);
				}
            }
			entry.pipe(fs.createWriteStream(finalPath));
		} else {
			entry.autodrain();
		}
	})
});

exports('CreateFolderIfNotExisting', (path) => {
    if (!fs.existsSync(path)) {
        fs.mkdirSync(path);
    }
});

exports('DeleteDirectoryRecursively', (dir) => {
    fs.rmdir(dir, {recursive:true}, (err) => {
        if (err) {
            console.log(err)
            return false, err;
        }
    });
    return true
});