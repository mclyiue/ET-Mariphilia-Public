/*
此脚本文件建立了新的，整套的材料
*/
#priority -900
#loader contenttweaker
//导包
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
static partTypes as string[string] = {
	part_pickaxe : "pickaxePart",
	part_axe : "axePart",
	part_shovel : "shovelPart",
	part_sword : "swordPart",
	part_hoe : "hoePart"
};
static partNames as string[] = [
	"part_pickaxe",
	"part_axe",
	"part_shovel",
	"part_sword",
	"part_hoe"
];
static registeredToolMaterials as int[string] = {
	Iron : 16777215,
	Copper : 15966056,
	Tin : 16252923,
	Lead : 13878251,
	Bronze : 15974792,
	Electrum : 16376711,
	Silver : 14612735,
	Gold : 15396439,
	Nickel : 15727828,
	Dawnstone : 16759153,
	Aluminum : 16768726
};

function registerToolParts(){
	for type, oredict in partTypes{
		MaterialSystem.getPartBuilder().setName(type).setPartType(MaterialSystem.getPartType("item")).setOreDictName(oredict).build();
	}
	for material, color in registeredToolMaterials{
		MaterialSystem.getMaterialBuilder().setName(material).setColor(color).build().registerParts(partNames);
	}
}

function init(){
	registerToolParts();
}