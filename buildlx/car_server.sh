#!/bin/bash
make check -j2 && make -j2 && cp ./SSVOpenHexagon ../_RELEASE && (cd ../_RELEASE && ./SSVOpenHexagon -headless -server)


