#!/bin/sh
for f in *capnp; do

	short=${f%\.capnp}
	test -d $short || mkdir $short
	capnp compile -oc++:$short $f

done
