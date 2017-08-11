case "$1" in

	build)
	echo Building for macOS..
	cp src/mac-config.php src/config.php
	docker build -t mach-mongoqp .
	echo
	echo ">> Now you can run: $0 start"
	echo
	;;

	build-linux)
	echo Building for linux..
	cp src/linux-config.php src/config.php
	docker build -t mach-mongoqp .
	;;

	start)
	docker run -d -p8888:8888 --name mach-mongoqp mach-mongoqp
	echo
	echo ">> mongoqp running at http://localhost:8888"
	echo
	;;

	stop)
	docker stop mach-mongoqp -t1
	docker rm mach-mongoqp
	;;

	*)
	echo "Usage: $0 (build | start | stop)"
esac
