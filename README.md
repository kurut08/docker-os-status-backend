# What is Docker OS Status Backend?
It's a 'small' docker container exposing couple endpoints to access some
info about the machine that it's running on.

## Why does the image of this simple program take 480MB?

That's because almost 320MB of it is used by one of the dependencies (diskusage),
its own dependencies and software required to make it run
(python3 ~ 43MB, make ~ 0.5MB, g++ ~ 220MB, diskusage ~ 52MB).
It causes the image size to go from 163MB to 480MB.

## What endpoints are available in this application?
- /architecture -  returns machine type (arm64, x86_64 etc.),
- /cpu-count - returns number of cores in the CPU,
- /cpu-usage - returns usage of entire cpu as a percentage.
- /cpu-core-usage/:id - returns usage of specified cpu core as percentage,
- /disk-free - returns free disk space as bytes. Checks of C drive on Windows
 and / path on Unix,
- /disk-total - returns disk size as bytes,
- /disk-usage - returns used disk space as bytes,
- /disk-usage-percentage - returns used disk space as percentage,
- /ram-free - returns free RAM memory as bytes,
- /ram-total - returns total RAM memory size as bytes,
- /ram-usage - returns used RAM memory as bytes,
- /ram-usage-percentage - returns used RAM memory as percentage,
- /os - returns OS type,
- /os-uptime - returns system uptime in seconds.