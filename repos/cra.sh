#!/bin/bash

function delete_files() {
    echo "Changing directory from $1 to $1/src"
    cd "src"
    echo "Deleting files: logo.svg, reportWebVitals.js, setupTests.js, App.test.js, App.css, index.css"
    rm logo.svg reportWebVitals.js setupTests.js App.test.js App.css index.css
}

if [ "$1" != "." ]; then
    	npx create-react-app "$1"
   	cd "$1"
	delete_files
else
	if [ -d "$2" ];then
		echo "Changing directory to $2"
		cd "$2"
		echo "creating React app at $2"
		npx create-react-app .
		delete_files
	else
		echo "Error: Directory '$2' not found"
		exit 1
	fi
fi

