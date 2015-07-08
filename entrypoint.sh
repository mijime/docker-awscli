#!/bin/sh
/bin/sh -c "metadata(){ curl http://169.254.169.254/latest/\$@; };$@"
