rm -rf "$(dirname $0)/config"
rm -rf "$(dirname $0)/scripts"
rm -rf "$(dirname $0)/mods"

mkdir "$(dirname $0)/mods"

cp -r "$(dirname $0)/../config" "$(dirname $0)"
cp -r "$(dirname $0)/../scripts" "$(dirname $0)"
find "$(dirname $0)/../mods" -maxdepth 1 -not -name ImLookingAtBlood-1.7.2-1.1a.jar -not -name LaunchGui-1.7.10-2.0-18-client.jar -not -name thaumcraftneiplugin-1.7.10-1.7a.jar -not -name FovControl-1.7.10-1.2.1.jar -not -name MouseTweaks-2.4.4-mc1.7.10.jar -not -name RealTimeClock-1.7.10-0.2.jar -exec cp -r -t "$(dirname $0)/mods" {} +
