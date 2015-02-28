# RTL-SDR explorations


### Setup
https://gist.github.com/0xabad1dea/5777726
```
sudo port install cmake
sudo port install libusb
sudo port install pkgconfig
sudo port install sox # for easy audio
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr/
mkdir build
cd build/
```
Ran into trouble here. Solution:
+ use homebrew to install libusb at 1.0
`$ brew link --overwrite libusb`

And then
```
cmake ../
make
sudo make install
```