CC = go

all:
	mkdir build
	export CGO_ENABLED=0
	GOOS=linux GOARCH=amd64 $(CC) build -o build/mantra-amd64-linux
	GOOS=linux GOARCH=386 $(CC) build -o build/mantra-i386-linux
	GOOS=windows GOARCH=386 $(CC) build -o build/mantra-i386-windows.exe
	GOOS=windows GOARCH=amd64 $(CC) build -o build/mantra-amd64-windows.exe

clean:
	rm -rf build
