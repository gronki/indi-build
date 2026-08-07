set -e

sudo rm -rf /opt/indi

bash build-core.sh

bash build-component.sh libatik
bash build-component.sh indi-atik

bash build-component.sh libasi
bash build-component.sh indi-asi

bash build-component.sh libplayerone
bash build-component.sh indi-playerone

bash build-component.sh libaltaircam
bash build-component.sh libtoupcam
bash build-component.sh indi-toupbase -DWITH_{BRESSERCAM,MALLINCAM,MEADECAM,NNCAM,OGMACAM,OMEGONPROCAM,STARSHOOTG,TSCAM,SVBONYCAM}=Off

bash build-component.sh indi-eqmod
bash build-component.sh indi-gphoto
