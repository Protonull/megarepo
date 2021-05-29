#!/bin/bash
cd "$(dirname "$0")" || exit

if [[ "$*" == "--clone" ]] || [[ $# -eq 0 ]]
then
git clone https://github.com/CivClassic/BanStick.git BanStick
git clone https://github.com/CivClassic/Bastion.git Bastion
git clone https://github.com/CivClassic/Brewery.git Brewery
git clone https://github.com/CivClassic/Citadel.git Citadel
git clone https://github.com/CivClassic/CivChat2.git CivChat2
git clone https://github.com/CivClassic/CivClassicGlue.git CivClassicGlue
git clone https://github.com/CivClassic/CivDuties.git CivDuties
git clone https://github.com/CivClassic/CivModCore.git CivModCore
git clone https://github.com/CivClassic/CivSpy.git CivSpy
git clone https://github.com/Protonull/CombatTagPlus.git CombatTagPlus
git clone https://github.com/Protonull/CropControl.git CropControl
git clone https://github.com/CivClassic/Donum.git Donum
git clone https://github.com/CivClassic/EssenceGlue.git EssenceGlue
git clone https://github.com/CivClassic/ExilePearl.git ExilePearl
git clone https://github.com/CivClassic/FactoryMod.git FactoryMod
git clone https://github.com/CivClassic/Finale.git Finale
git clone https://github.com/CivClassic/HiddenOre.git HiddenOre
git clone https://github.com/CivClassic/ItemExchange.git ItemExchange
git clone https://github.com/CivClassic/JukeAlert.git JukeAlert
git clone https://github.com/CivClassic/KiraBukkitGateway.git KiraBukkitGateway
git clone https://github.com/CivClassic/NameColors.git NameColors
git clone https://github.com/CivClassic/NameLayer.git NameLayer
git clone https://github.com/CivClassic/style-guide.git ParentPOM
git clone https://github.com/CivClassic/RailSwitch.git RailSwitch
git clone https://github.com/CivClassic/RandomSpawn.git RandomSpawn
git clone https://github.com/CivClassic/RealisticBiomes.git RealisticBiomes
git clone https://github.com/CivClassic/SimpleAdminHacks.git SimpleAdminHacks
git clone https://github.com/CivClassic/WorldBorder.git WorldBorder
fi

if [[ "$*" == "--install" ]] || [[ $# -eq 0 ]]
then
mavenInstall() {
    project=$1
    if [ -f $project ];
    then
        echo Installing $project
        (cd $1; ../mvnw clean install -Dcheckstyle.skip -Dmaven.javadoc.skip=true --fail-at-end)
    else
        echo Skipping $project
    fi
}
mavenInstall BanStick
mavenInstall Bastion
mavenInstall Brewery
mavenInstall Citadel
mavenInstall CivChat2
mavenInstall CivClassicGlue
mavenInstall CivDuties
mavenInstall CivModCore
mavenInstall CivSpy
mavenInstall CombatTagPlus
mavenInstall CropControl
mavenInstall Donum
mavenInstall EssenceGlue
mavenInstall ExilePearl
mavenInstall FactoryMod
mavenInstall Finale
mavenInstall HiddenOre
mavenInstall ItemExchange
mavenInstall JukeAlert
mavenInstall KiraBukkitGateway
mavenInstall NameColors
mavenInstall NameLayer
mavenInstall ParentPOM
mavenInstall RailSwitch
mavenInstall RandomSpawn
mavenInstall RealisticBiomes
mavenInstall SimpleAdminHacks
mavenInstall WorldBorder
fi
