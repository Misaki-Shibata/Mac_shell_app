#!/bin/sh

SHELLSCRIPT="script.sh"

mkdir -p Application.app/Contents/{MacOS,Resources}

cat > Application.app/Contents/Info.plist <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
	<dict>
		<key>CFBundleExecutable</key>
		<string>${SHELLSCRIPT}</string>
	</dict>
</plist>
EOF

cp ${SHELLSCRIPT} Application.app/Contents/MacOS/

chmod +x Application.app/Contents/MacOS/${SHELLSCRIPT}
