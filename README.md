docker-mongoqp
=======

This is a fork of [mongoqp](https://github.com/jmikola/mongoqp) that runs over **Docker**, for now it only works on macOS but the config file for linux is there to be edited later (in `src/linux-config.php`)

## Instructions
After installing docker in your system:
```bash
./mongoqp build
./mongoqp start
```

To stop the app just type
```bash
./mongoqp stop
```

If you need to connect to a specific IP, other than your localhost, edit the `src/mac-config.php` uri line.

---
### About mongoqp

**mongoqp** is a frontend for MongoDB's query profiler collections (i.e.
`db.system.profile`), built using Silex and MongoDB PHP Library.

It currently supports:

 * Toggling query profiler levels (off, slow, all) per database
 * Grouping similar queries by BSON structure
 * Reporting aggregate query statistics (min, max, average, times)
 * Sorting, pagination and filtering via [DataTables][]

Future plans:

 * Control over slow query thresholds
 * Improving analytics
 * Persistent data collection

### Screenshots

![Server view](http://i.imgur.com/5EZbm.png)

![Database view](http://i.imgur.com/pXLc4.png)
