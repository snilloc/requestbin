# RequestBin

Originally Created by [Jeff Lindsay](http://progrium.com)

Contributors
------------
 * Barry Carlyon <barry@barrycarlyon.co.uk>
 * Jeff Lindsay <progrium@gmail.com>

License
-------
MIT

Version
-------
2.0.9 - The latest requestbin with better support for deploying and running in docker.  Currently using python 2.7

3.x.x - Future development with python 3

## Deploy your own instance using Docker

`$ git clone git://github.com/snilloc/requestbin.git`


### Build Local Docker Image with auto increment TAG
```$ sudo ./build.sh ```

### Run RequestBin

#### By Script
```
$ sudo ./runRequestBin
```

#### Command Line
```
sudo docker run -d -p "5000:5000" snilloc/requestbin:2.0.9
```

## Note Original RequestBin
#### We have discontinued the publicly hosted version of RequestBin due to ongoing abuse that made it very difficult to keep the site up reliably. Please see instructions above for setting up your own self-hosted instance.

