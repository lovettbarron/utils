### Radio stations
http://radio-locator.com/cgi-bin/locate?select=city&city=San+Francisco&state=CA

### Commands
Play KQED to test on Sox
rtl_fm -M wbfm -f 88.5M | play -r 32k -t raw -e s -b 16 -c 1 -V1 -

#### rtl_fm
-f Frequency
-M wbfm (widebandfm)


#### play
-r Rate
-t raw Filetype raw, input var
-e s Encoding
-b 16 Bit samplesize  (16bit in this case)
-c Channels
-V1 Log verbosity level
