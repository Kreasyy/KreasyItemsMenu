local mod = RegisterMod("Item Menu", 1)

local items = {
    {id = CollectibleType.COLLECTIBLE_SAD_ONION, name = "Sad Onion"},
    {id = CollectibleType.COLLECTIBLE_INNER_EYE, name = "Inner Eye"},
    {id = CollectibleType.COLLECTIBLE_SPOON_BENDER, name = "Spoon Bender"},
    {id = CollectibleType.COLLECTIBLE_CRICKETS_HEAD, name = "Cricket's Head"},
    {id = CollectibleType.COLLECTIBLE_MY_REFLECTION, name = "My Reflection"},
    {id = CollectibleType.COLLECTIBLE_NUMBER_ONE, name = "Number One"},
    {id = CollectibleType.COLLECTIBLE_BLOOD_OF_THE_MARTYR, name = "Blood of the Martyr"},
    {id = CollectibleType.COLLECTIBLE_BROTHER_BOBBY, name = "Brother Bobby"},
    {id = CollectibleType.COLLECTIBLE_SKATOLE, name = "Skatole"},
    {id = CollectibleType.COLLECTIBLE_HALO_OF_FLIES, name = "Halo of Flies"},
    {id = CollectibleType.COLLECTIBLE_1UP, name = "1-Up"},
    {id = CollectibleType.COLLECTIBLE_MAGIC_MUSHROOM, name = "Magic Mushroom"},
    {id = CollectibleType.COLLECTIBLE_VIRUS, name = "The Virus"},
    {id = CollectibleType.COLLECTIBLE_ROID_RAGE, name = "Roid Rage"},
    {id = CollectibleType.COLLECTIBLE_HEART, name = "Heart"},
    {id = CollectibleType.COLLECTIBLE_RAW_LIVER, name = "Raw Liver"},
    {id = CollectibleType.COLLECTIBLE_SKELETON_KEY, name = "Skeleton Key"},
    {id = CollectibleType.COLLECTIBLE_DOLLAR, name = "Dollar"},
    {id = CollectibleType.COLLECTIBLE_BOOM, name = "Boom"},
    {id = CollectibleType.COLLECTIBLE_TRANSCENDENCE, name = "Transcendence"},
    {id = CollectibleType.COLLECTIBLE_COMPASS, name = "Compass"},
    {id = CollectibleType.COLLECTIBLE_LUNCH, name = "Lunch"},
    {id = CollectibleType.COLLECTIBLE_DINNER, name = "Dinner"},
    {id = CollectibleType.COLLECTIBLE_DESSERT, name = "Dessert"},
    {id = CollectibleType.COLLECTIBLE_BREAKFAST, name = "Breakfast"},
    {id = CollectibleType.COLLECTIBLE_ROTTEN_MEAT, name = "Rotten Meat"},
    {id = CollectibleType.COLLECTIBLE_WOODEN_SPOON, name = "Wooden Spoon"},
    {id = CollectibleType.COLLECTIBLE_BELT, name = "Belt"},
    {id = CollectibleType.COLLECTIBLE_MOMS_UNDERWEAR, name = "Mom's Underwear"},
    {id = CollectibleType.COLLECTIBLE_MOMS_HEELS, name = "Mom's Heels"},
    {id = CollectibleType.COLLECTIBLE_MOMS_LIPSTICK, name = "Mom's Lipstick"},
    {id = CollectibleType.COLLECTIBLE_WIRE_COAT_HANGER, name = "Wire Coat Hanger"},
    {id = CollectibleType.COLLECTIBLE_BIBLE, name = "Bible"},
    {id = CollectibleType.COLLECTIBLE_BOOK_OF_BELIAL, name = "Book of Belial"},
    {id = CollectibleType.COLLECTIBLE_NECRONOMICON, name = "Necronomicon"},
    {id = CollectibleType.COLLECTIBLE_POOP, name = "Poop"},
    {id = CollectibleType.COLLECTIBLE_MR_BOOM, name = "Mr. Boom"},
    {id = CollectibleType.COLLECTIBLE_TAMMYS_HEAD, name = "Tammy's Head"},
    {id = CollectibleType.COLLECTIBLE_MOMS_BRA, name = "Mom's Bra"},
    {id = CollectibleType.COLLECTIBLE_KAMIKAZE, name = "Kamikaze"},
    {id = CollectibleType.COLLECTIBLE_MOMS_PAD, name = "Mom's Pad"},
    {id = CollectibleType.COLLECTIBLE_BOBS_ROTTEN_HEAD, name = "Bob's Rotten Head"},
    {id = CollectibleType.COLLECTIBLE_TELEPORT, name = "Teleport"},
    {id = CollectibleType.COLLECTIBLE_YUM_HEART, name = "Yum Heart"},
    {id = CollectibleType.COLLECTIBLE_LUCKY_FOOT, name = "Lucky Foot"},
    {id = CollectibleType.COLLECTIBLE_DOCTORS_REMOTE, name = "Doctor's Remote"},
    {id = CollectibleType.COLLECTIBLE_CUPIDS_ARROW, name = "Cupid's Arrow"},
    {id = CollectibleType.COLLECTIBLE_SHOOP_DA_WHOOP, name = "Shoop Da Whoop"},
    {id = CollectibleType.COLLECTIBLE_STEVEN, name = "Steven"},
    {id = CollectibleType.COLLECTIBLE_PENTAGRAM, name = "Pentagram"},
    {id = CollectibleType.COLLECTIBLE_DR_FETUS, name = "Dr. Fetus"},
    {id = CollectibleType.COLLECTIBLE_MAGNETO, name = "Magneto"},
    {id = CollectibleType.COLLECTIBLE_TREASURE_MAP, name = "Treasure Map"},
    {id = CollectibleType.COLLECTIBLE_MOMS_EYE, name = "Mom's Eye"},
    {id = CollectibleType.COLLECTIBLE_LEMON_MISHAP, name = "Lemon Mishap"},
    {id = CollectibleType.COLLECTIBLE_DISTANT_ADMIRATION, name = "Distant Admiration"},
    {id = CollectibleType.COLLECTIBLE_BOOK_OF_SHADOWS, name = "Book of Shadows"},
    {id = CollectibleType.COLLECTIBLE_BOOK_OF_BELIAL_PASSIVE, name = "Book of Belial (Passive)"},
    {id = CollectibleType.COLLECTIBLE_LADDER, name = "Ladder"},
    {id = CollectibleType.COLLECTIBLE_CHARM_VAMPIRE, name = "Charm of the Vampire"},
    {id = CollectibleType.COLLECTIBLE_BATTERY, name = "Battery"},
    {id = CollectibleType.COLLECTIBLE_STEAM_SALE, name = "Steam Sale"},
    {id = CollectibleType.COLLECTIBLE_ANARCHIST_COOKBOOK, name = "Anarchist Cookbook"},
    {id = CollectibleType.COLLECTIBLE_HOURGLASS, name = "Hourglass"},
    {id = CollectibleType.COLLECTIBLE_SISTER_MAGGY, name = "Sister Maggy"},
    {id = CollectibleType.COLLECTIBLE_TECHNOLOGY, name = "Technology"},
    {id = CollectibleType.COLLECTIBLE_CHOCOLATE_MILK, name = "Chocolate Milk"},
    {id = CollectibleType.COLLECTIBLE_GROWTH_HORMONES, name = "Growth Hormones"},
    {id = CollectibleType.COLLECTIBLE_MINI_MUSH, name = "Mini Mush"},
    {id = CollectibleType.COLLECTIBLE_ROSARY, name = "Rosary"},
    {id = CollectibleType.COLLECTIBLE_CUBE_OF_MEAT, name = "Cube of Meat"},
    {id = CollectibleType.COLLECTIBLE_QUARTER, name = "Quarter"},
    {id = CollectibleType.COLLECTIBLE_PHD, name = "PHD"},
    {id = CollectibleType.COLLECTIBLE_XRAY_VISION, name = "X-Ray Vision"},
    {id = CollectibleType.COLLECTIBLE_MY_LITTLE_UNICORN, name = "My Little Unicorn"},
    {id = CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS, name = "Book of Revelations"},
    {id = CollectibleType.COLLECTIBLE_MARK, name = "Mark"},
    {id = CollectibleType.COLLECTIBLE_PACT, name = "Pact"},
    {id = CollectibleType.COLLECTIBLE_DEAD_CAT, name = "Dead Cat"},
    {id = CollectibleType.COLLECTIBLE_LORD_OF_THE_PIT, name = "Lord of the Pit"},
    {id = CollectibleType.COLLECTIBLE_THE_NAIL, name = "The Nail"},
    {id = CollectibleType.COLLECTIBLE_WE_NEED_TO_GO_DEEPER, name = "We Need to Go Deeper"},
    {id = CollectibleType.COLLECTIBLE_DECK_OF_CARDS, name = "Deck of Cards"},
    {id = CollectibleType.COLLECTIBLE_MONSTROS_TOOTH, name = "Monstro's Tooth"},
    {id = CollectibleType.COLLECTIBLE_LOKIS_HORNS, name = "Loki's Horns"},
    {id = CollectibleType.COLLECTIBLE_LITTLE_CHUBBY, name = "Little Chubby"},
    {id = CollectibleType.COLLECTIBLE_SPIDER_BITE, name = "Spider Bite"},
    {id = CollectibleType.COLLECTIBLE_SMALL_ROCK, name = "Small Rock"},
    {id = CollectibleType.COLLECTIBLE_SPELUNKER_HAT, name = "Spelunker's Hat"},
    {id = CollectibleType.COLLECTIBLE_SUPER_BANDAGE, name = "Super Bandage"},
    {id = CollectibleType.COLLECTIBLE_GAMEKID, name = "Game Kid"},
    {id = CollectibleType.COLLECTIBLE_SACK_OF_PENNIES, name = "Sack of Pennies"},
    {id = CollectibleType.COLLECTIBLE_ROBO_BABY, name = "Robo-Baby"},
    {id = CollectibleType.COLLECTIBLE_LITTLE_CHAD, name = "Little Chad"},
    {id = CollectibleType.COLLECTIBLE_BOOK_OF_SIN, name = "Book of Sin"},
    {id = CollectibleType.COLLECTIBLE_RELIC, name = "The Relic"},
    {id = CollectibleType.COLLECTIBLE_LITTLE_GISH, name = "Little Gish"},
    {id = CollectibleType.COLLECTIBLE_LITTLE_STEVEN, name = "Little Steven"},
    {id = CollectibleType.COLLECTIBLE_HALO, name = "Halo"},
    {id = CollectibleType.COLLECTIBLE_MOMS_BOTTLE_OF_PILLS, name = "Mom's Bottle of Pills"},
    {id = CollectibleType.COLLECTIBLE_COMMON_COLD, name = "Common Cold"},
    {id = CollectibleType.COLLECTIBLE_PARASITE, name = "Parasite"},
    {id = CollectibleType.COLLECTIBLE_D6, name = "D6"},
    {id = CollectibleType.COLLECTIBLE_MR_MEGA, name = "Mr. Mega"},
    {id = CollectibleType.COLLECTIBLE_PINKING_SHEARS, name = "Pinking Shears"},
    {id = CollectibleType.COLLECTIBLE_WAFER, name = "Wafer"},
    {id = CollectibleType.COLLECTIBLE_MONEY_EQUALS_POWER, name = "Money = Power"},
    {id = CollectibleType.COLLECTIBLE_MOMS_CONTACTS, name = "Mom's Contacts"},
    {id = CollectibleType.COLLECTIBLE_BEAN, name = "Bean"},
    {id = CollectibleType.COLLECTIBLE_GUARDIAN_ANGEL, name = "Guardian Angel"},
    {id = CollectibleType.COLLECTIBLE_DEMON_BABY, name = "Demon Baby"},
    {id = CollectibleType.COLLECTIBLE_MOMS_KNIFE, name = "Mom's Knife"},
    {id = CollectibleType.COLLECTIBLE_OUIJA_BOARD, name = "Ouija Board"},
    {id = CollectibleType.COLLECTIBLE_9_VOLT, name = "9 Volt"},
    {id = CollectibleType.COLLECTIBLE_DEAD_BIRD, name = "Dead Bird"},
    {id = CollectibleType.COLLECTIBLE_BRIMSTONE, name = "Brimstone"},
    {id = CollectibleType.COLLECTIBLE_BLOOD_BAG, name = "Blood Bag"},
    {id = CollectibleType.COLLECTIBLE_ODD_MUSHROOM_THIN, name = "Odd Mushroom (Thin)"},
    {id = CollectibleType.COLLECTIBLE_ODD_MUSHROOM_LARGE, name = "Odd Mushroom (Large)"},
    {id = CollectibleType.COLLECTIBLE_WHORE_OF_BABYLON, name = "Whore of Babylon"},
    {id = CollectibleType.COLLECTIBLE_MONSTER_MANUAL, name = "Monster Manual"},
    {id = CollectibleType.COLLECTIBLE_DEAD_SEA_SCROLLS, name = "Dead Sea Scrolls"},
    {id = CollectibleType.COLLECTIBLE_BOBBY_BOMB, name = "Bobby Bomb"},
    {id = CollectibleType.COLLECTIBLE_RAZOR_BLADE, name = "Razor Blade"},
    {id = CollectibleType.COLLECTIBLE_FORGET_ME_NOW, name = "Forget Me Now"},
    {id = CollectibleType.COLLECTIBLE_FOREVER_ALONE, name = "Forever Alone"},
    {id = CollectibleType.COLLECTIBLE_BUCKET_OF_LARD, name = "Bucket of Lard"},
    {id = CollectibleType.COLLECTIBLE_PONY, name = "Pony"},
    {id = CollectibleType.COLLECTIBLE_BOMB_BAG, name = "Bomb Bag"},
    {id = CollectibleType.COLLECTIBLE_LUMP_OF_COAL, name = "Lump of Coal"},
    {id = CollectibleType.COLLECTIBLE_GUPPYS_PAW, name = "Guppy's Paw"},
    {id = CollectibleType.COLLECTIBLE_GUPPYS_TAIL, name = "Guppy's Tail"},
    {id = CollectibleType.COLLECTIBLE_IV_BAG, name = "IV Bag"},
    {id = CollectibleType.COLLECTIBLE_BEST_FRIEND, name = "Best Friend"},
    {id = CollectibleType.COLLECTIBLE_REMOTE_DETONATOR, name = "Remote Detonator"},
    {id = CollectibleType.COLLECTIBLE_STIGMATA, name = "Stigmata"},
    {id = CollectibleType.COLLECTIBLE_MOMS_PURSE, name = "Mom's Purse"},
    {id = CollectibleType.COLLECTIBLE_BOBS_CURSE, name = "Bob's Curse"},
    {id = CollectibleType.COLLECTIBLE_PAGEANT_BOY, name = "Pageant Boy"},
    {id = CollectibleType.COLLECTIBLE_SCAPULAR, name = "Scapular"},
    {id = CollectibleType.COLLECTIBLE_SPEED_BALL, name = "Speed Ball"},
    {id = CollectibleType.COLLECTIBLE_BUM_FRIEND, name = "Bum Friend"},
    {id = CollectibleType.COLLECTIBLE_GUPPYS_HEAD, name = "Guppy's Head"},
    {id = CollectibleType.COLLECTIBLE_PRAYER_CARD, name = "Prayer Card"},
    {id = CollectibleType.COLLECTIBLE_NOTCHED_AXE, name = "Notched Axe"},
    {id = CollectibleType.COLLECTIBLE_INFESTATION, name = "Infestation"},
    {id = CollectibleType.COLLECTIBLE_IPECAC, name = "Ipecac"},
    {id = CollectibleType.COLLECTIBLE_TOUGH_LOVE, name = "Tough Love"},
    {id = CollectibleType.COLLECTIBLE_MULLIGAN, name = "Mulligan"}, 
    {id = CollectibleType.COLLECTIBLE_TECHNOLOGY_2, name = "Technology 2"}, 
    {id = CollectibleType.COLLECTIBLE_MUTANT_SPIDER, name = "Mutant Spider"}, 
    {id = CollectibleType.COLLECTIBLE_CHEMICAL_PEEL, name = "Chemical Peel"}, 
    {id = CollectibleType.COLLECTIBLE_PEEPER, name = "Peeper"}, 
    {id = CollectibleType.COLLECTIBLE_HABIT, name = "Habit"}, 
    {id = CollectibleType.COLLECTIBLE_BLOODY_LUST, name = "Bloody Lust"}, 
    {id = CollectibleType.COLLECTIBLE_CRYSTAL_BALL, name = "Crystal Ball"}, 
    {id = CollectibleType.COLLECTIBLE_SPIRIT_OF_THE_NIGHT, name = "Spirit of the Night"}, 
    {id = CollectibleType.COLLECTIBLE_CRACK_THE_SKY, name = "Crack the Sky"}, 
    {id = CollectibleType.COLLECTIBLE_ANKH, name = "Ankh"}, 
    {id = CollectibleType.COLLECTIBLE_CELTIC_CROSS, name = "Celtic Cross"}, 
    {id = CollectibleType.COLLECTIBLE_GHOST_BABY, name = "Ghost Baby"}, 
    {id = CollectibleType.COLLECTIBLE_CANDLE, name = "Candle"}, 
    {id = CollectibleType.COLLECTIBLE_CAT_O_NINE_TAILS, name = "Cat-O-Nine-Tails"}, 
    {id = CollectibleType.COLLECTIBLE_D20, name = "D20"}, 
    {id = CollectibleType.COLLECTIBLE_HARLEQUIN_BABY, name = "Harlequin Baby"}, 
    {id = CollectibleType.COLLECTIBLE_EPIC_FETUS, name = "Epic Fetus"}, 
    {id = CollectibleType.COLLECTIBLE_POLYPHEMUS, name = "Polyphemus"}, 
    {id = CollectibleType.COLLECTIBLE_DADDY_LONGLEGS, name = "Daddy Longlegs"}, 
    {id = CollectibleType.COLLECTIBLE_SPIDER_BUTT, name = "Spider Butt"}, 
    {id = CollectibleType.COLLECTIBLE_SACRIFICIAL_DAGGER, name = "Sacrificial Dagger"}, 
    {id = CollectibleType.COLLECTIBLE_MITRE, name = "Mitre"}, 
    {id = CollectibleType.COLLECTIBLE_RAINBOW_BABY, name = "Rainbow Baby"}, 
    {id = CollectibleType.COLLECTIBLE_DADS_KEY, name = "Dad's Key"}, 
    {id = CollectibleType.COLLECTIBLE_STEM_CELLS, name = "Stem Cells"}, 
    {id = CollectibleType.COLLECTIBLE_PORTABLE_SLOT, name = "Portable Slot"}, 
    {id = CollectibleType.COLLECTIBLE_HOLY_WATER, name = "Holy Water"}, 
    {id = CollectibleType.COLLECTIBLE_FATE, name = "Fate"}, 
    {id = CollectibleType.COLLECTIBLE_BLACK_BEAN, name = "Black Bean"}, 
    {id = CollectibleType.COLLECTIBLE_WHITE_PONY, name = "White Pony"}, 
    {id = CollectibleType.COLLECTIBLE_SACRED_HEART, name = "Sacred Heart"}, 
    {id = CollectibleType.COLLECTIBLE_TOOTH_PICKS, name = "Tooth Picks"}, 
    {id = CollectibleType.COLLECTIBLE_HOLY_GRAIL, name = "Holy Grail"}, 
    {id = CollectibleType.COLLECTIBLE_DEAD_DOVE, name = "Dead Dove"}, 
    {id = CollectibleType.COLLECTIBLE_BLOOD_RIGHTS, name = "Blood Rights"}, 
    {id = CollectibleType.COLLECTIBLE_GUPPYS_HAIRBALL, name = "Guppy's Hairball"}, 
    {id = CollectibleType.COLLECTIBLE_ABEL, name = "Abel"}, 
    {id = CollectibleType.COLLECTIBLE_SMB_SUPER_FAN, name = "SMB Super Fan"}, 
    {id = CollectibleType.COLLECTIBLE_PYRO, name = "Pyro"}, 
    {id = CollectibleType.COLLECTIBLE_3_DOLLAR_BILL, name = "3 Dollar Bill"}, 
    {id = CollectibleType.COLLECTIBLE_TELEPATHY_BOOK, name = "Telepathy Book"}, 
    {id = CollectibleType.COLLECTIBLE_MEAT, name = "Meat"}, 
    {id = CollectibleType.COLLECTIBLE_MAGIC_8_BALL, name = "Magic 8 Ball"}, 
    {id = CollectibleType.COLLECTIBLE_MOMS_COIN_PURSE, name = "Mom's Coin Purse"},
    {id = CollectibleType.COLLECTIBLE_SQUEEZY, name = "Squeezy"}, 
    {id = CollectibleType.COLLECTIBLE_JESUS_JUICE, name = "Jesus Juice"}, 
    {id = CollectibleType.COLLECTIBLE_BOX, name = "Box"}, 
    {id = CollectibleType.COLLECTIBLE_MOMS_KEY, name = "Mom's Key"}, 
    {id = CollectibleType.COLLECTIBLE_MOMS_EYESHADOW, name = "Mom's Eyeshadow"}, 
    {id = CollectibleType.COLLECTIBLE_IRON_BAR, name = "Iron Bar"}, 
    {id = CollectibleType.COLLECTIBLE_MIDAS_TOUCH, name = "Midas Touch"}, 
    {id = CollectibleType.COLLECTIBLE_HUMBLEING_BUNDLE, name = "Humbling Bundle"}, 
    {id = CollectibleType.COLLECTIBLE_FANNY_PACK, name = "Fanny Pack"}, 
    {id = CollectibleType.COLLECTIBLE_SHARP_PLUG, name = "Sharp Plug"}, 
    {id = CollectibleType.COLLECTIBLE_GUILLOTINE, name = "Guillotine"}, 
    {id = CollectibleType.COLLECTIBLE_BALL_OF_BANDAGES, name = "Ball of Bandages"}, 
    {id = CollectibleType.COLLECTIBLE_CHAMPION_BELT, name = "Champion Belt"}, 
    {id = CollectibleType.COLLECTIBLE_BUTT_BOMBS, name = "Butt Bombs"}, 
    {id = CollectibleType.COLLECTIBLE_GNAWED_LEAF, name = "Gnawed Leaf"}, 
    {id = CollectibleType.COLLECTIBLE_SPIDERBABY, name = "Spider Baby"}, 
    {id = CollectibleType.COLLECTIBLE_GUPPYS_COLLAR, name = "Guppy's Collar"}, 
    {id = CollectibleType.COLLECTIBLE_LOST_CONTACT, name = "Lost Contact"}, 
    {id = CollectibleType.COLLECTIBLE_ANEMIC, name = "Anemic"}, 
    {id = CollectibleType.COLLECTIBLE_GOAT_HEAD, name = "Goat Head"}, 
    {id = CollectibleType.COLLECTIBLE_CEREMONIAL_ROBES, name = "Ceremonial Robes"}, 
    {id = CollectibleType.COLLECTIBLE_MOMS_WIG, name = "Mom's Wig"}, 
    {id = CollectibleType.COLLECTIBLE_PLACENTA, name = "Placenta"}, 
    {id = CollectibleType.COLLECTIBLE_OLD_BANDAGE, name = "Old Bandage"}, 
    {id = CollectibleType.COLLECTIBLE_SAD_BOMBS, name = "Sad Bombs"}, 
    {id = CollectibleType.COLLECTIBLE_RUBBER_CEMENT, name = "Rubber Cement"}, 
    {id = CollectibleType.COLLECTIBLE_ANTI_GRAVITY, name = "Anti-Gravity"}, 
    {id = CollectibleType.COLLECTIBLE_PYROMANIAC, name = "Pyromaniac"}, 
    {id = CollectibleType.COLLECTIBLE_CRICKETS_BODY, name = "Cricket's Body"}, 
    {id = CollectibleType.COLLECTIBLE_GIMPY, name = "Gimpy"}, 
    {id = CollectibleType.COLLECTIBLE_BLACK_LOTUS, name = "Black Lotus"}, 
    {id = CollectibleType.COLLECTIBLE_PIGGY_BANK, name = "Piggy Bank"}, 
    {id = CollectibleType.COLLECTIBLE_MOMS_PERFUME, name = "Mom's Perfume"}, 
    {id = CollectibleType.COLLECTIBLE_MONSTROS_LUNG, name = "Monstro's Lung"}, 
    {id = CollectibleType.COLLECTIBLE_ABADDON, name = "Abaddon"}, 
    {id = CollectibleType.COLLECTIBLE_BALL_OF_TAR, name = "Ball of Tar"}, 
    {id = CollectibleType.COLLECTIBLE_STOP_WATCH, name = "Stop Watch"}, 
    {id = CollectibleType.COLLECTIBLE_TINY_PLANET, name = "Tiny Planet"}, 
    {id = CollectibleType.COLLECTIBLE_INFESTATION_2, name = "Infestation 2"}, 
    {id = CollectibleType.COLLECTIBLE_E_COLI, name = "E. Coli"}, 
    {id = CollectibleType.COLLECTIBLE_DEATHS_TOUCH, name = "Death's Touch"}, 
    {id = CollectibleType.COLLECTIBLE_KEY_PIECE_1, name = "Key Piece 1"}, 
    {id = CollectibleType.COLLECTIBLE_KEY_PIECE_2, name = "Key Piece 2"}, 
    {id = CollectibleType.COLLECTIBLE_EXPERIMENTAL_TREATMENT, name = "Experimental Treatment"},
    {id = CollectibleType.COLLECTIBLE_CONTRACT_FROM_BELOW, name = "Contract from Below"},
    {id = CollectibleType.COLLECTIBLE_INFAMY, name = "Infamy"},
    {id = CollectibleType.COLLECTIBLE_TRINITY_SHIELD, name = "Trinity Shield"},
    {id = CollectibleType.COLLECTIBLE_TECH_5, name = "Tech 5"},
    {id = CollectibleType.COLLECTIBLE_20_20, name = "20/20"},
    {id = CollectibleType.COLLECTIBLE_BLUE_MAP, name = "Blue Map"},
    {id = CollectibleType.COLLECTIBLE_BFFS, name = "BFFS"},
    {id = CollectibleType.COLLECTIBLE_HIVE_MIND, name = "Hive Mind"},
    {id = CollectibleType.COLLECTIBLE_THERES_OPTIONS, name = "There's Options"},
    {id = CollectibleType.COLLECTIBLE_BOGO_BOMBS, name = "Bogos Bombs"},
    {id = CollectibleType.COLLECTIBLE_STARTER_DECK, name = "Starter Deck"},
    {id = CollectibleType.COLLECTIBLE_LITTLE_BAGGY, name = "Little Baggy"},
    {id = CollectibleType.COLLECTIBLE_MAGIC_SCAB, name = "Magic Scab"},
    {id = CollectibleType.COLLECTIBLE_BLOOD_CLOT, name = "Blood Clot"},
    {id = CollectibleType.COLLECTIBLE_SCREW, name = "The Screw"},
    {id = CollectibleType.COLLECTIBLE_HOT_BOMBS, name = "Hot Bombs"},
    {id = CollectibleType.COLLECTIBLE_FIRE_MIND, name = "Fire Mind"},
    {id = CollectibleType.COLLECTIBLE_MISSING_NO, name = "Missing No"},
    {id = CollectibleType.COLLECTIBLE_DARK_MATTER, name = "Dark Matter"},
    {id = CollectibleType.COLLECTIBLE_BLACK_CANDLE, name = "Black Candle"},
    {id = CollectibleType.COLLECTIBLE_PROPTOSIS, name = "Proptosis"},
    {id = CollectibleType.COLLECTIBLE_MISSING_PAGE_2, name = "Missing Page 2"},
    {id = CollectibleType.COLLECTIBLE_CLEAR_RUNE, name = "Clear Rune"},
    {id = CollectibleType.COLLECTIBLE_SMART_FLY, name = "Smart Fly"},
    {id = CollectibleType.COLLECTIBLE_DRY_BABY, name = "Dry Baby"},
    {id = CollectibleType.COLLECTIBLE_JUICY_SACK, name = "Juicy Sack"},
    {id = CollectibleType.COLLECTIBLE_ROBO_BABY_2, name = "Robo-Baby 2.0"},
    {id = CollectibleType.COLLECTIBLE_ROTTEN_BABY, name = "Rotten Baby"},
    {id = CollectibleType.COLLECTIBLE_HEADLESS_BABY, name = "Headless Baby"},
    {id = CollectibleType.COLLECTIBLE_LEECH, name = "Leech"},
    {id = CollectibleType.COLLECTIBLE_MYSTERY_SACK, name = "Mystery Sack"},
    {id = CollectibleType.COLLECTIBLE_BBF, name = "BBF"},
    {id = CollectibleType.COLLECTIBLE_BOBS_BRAIN, name = "Bob's Brain"},
    {id = CollectibleType.COLLECTIBLE_BEST_BUD, name = "Best Bud"},
    {id = CollectibleType.COLLECTIBLE_LIL_BRIMSTONE, name = "Lil' Brimstone"},
    {id = CollectibleType.COLLECTIBLE_ISAACS_HEART, name = "Isaac's Heart"},
    {id = CollectibleType.COLLECTIBLE_LIL_HAUNT, name = "Lil' Haunt"},
    {id = CollectibleType.COLLECTIBLE_DARK_BUM, name = "Dark Bum"},
    {id = CollectibleType.COLLECTIBLE_BIG_FAN, name = "Big Fan"},
    {id = CollectibleType.COLLECTIBLE_SISSY_LONGLEGS, name = "Sissy Longlegs"},
    {id = CollectibleType.COLLECTIBLE_PUNCHING_BAG, name = "Punching Bag"},
    {id = CollectibleType.COLLECTIBLE_HOW_TO_JUMP, name = "How to Jump"},
    {id = CollectibleType.COLLECTIBLE_D100, name = "D100"},
    {id = CollectibleType.COLLECTIBLE_D4, name = "D4"},
    {id = CollectibleType.COLLECTIBLE_D10, name = "D10"},
    {id = CollectibleType.COLLECTIBLE_BLANK_CARD, name = "Blank Card"},
    {id = CollectibleType.COLLECTIBLE_BOOK_OF_SECRETS, name = "Book of Secrets"},
    {id = CollectibleType.COLLECTIBLE_BOX_OF_SPIDERS, name = "Box of Spiders"},
    {id = CollectibleType.COLLECTIBLE_RED_CANDLE, name = "Red Candle"},
    {id = CollectibleType.COLLECTIBLE_THE_JAR, name = "The Jar"},
    {id = CollectibleType.COLLECTIBLE_FLUSH, name = "Flush"},
    {id = CollectibleType.COLLECTIBLE_SATANIC_BIBLE, name = "Satanic Bible"},
    {id = CollectibleType.COLLECTIBLE_HEAD_OF_KRAMPUS, name = "Head of Krampus"},
    {id = CollectibleType.COLLECTIBLE_BUTTER_BEAN, name = "Butter Bean"},
    {id = CollectibleType.COLLECTIBLE_MAGIC_FINGERS, name = "Magic Fingers"},
    {id = CollectibleType.COLLECTIBLE_CONVERTER, name = "Converter"},
    {id = CollectibleType.COLLECTIBLE_BLUE_BOX, name = "Blue Box"},
    {id = CollectibleType.COLLECTIBLE_UNICORN_STUMP, name = "Unicorn Stump"},
    {id = CollectibleType.COLLECTIBLE_TAURUS, name = "Taurus"},
    {id = CollectibleType.COLLECTIBLE_ARIES, name = "Aries"},
    {id = CollectibleType.COLLECTIBLE_CANCER, name = "Cancer"},
    {id = CollectibleType.COLLECTIBLE_LEO, name = "Leo"},
    {id = CollectibleType.COLLECTIBLE_VIRGO, name = "Virgo"},
    {id = CollectibleType.COLLECTIBLE_LIBRA, name = "Libra"},
    {id = CollectibleType.COLLECTIBLE_SCORPIO, name = "Scorpio"},
    {id = CollectibleType.COLLECTIBLE_SAGITTARIUS, name = "Sagittarius"},
    {id = CollectibleType.COLLECTIBLE_CAPRICORN, name = "Capricorn"},
    {id = CollectibleType.COLLECTIBLE_AQUARIUS, name = "Aquarius"},
    {id = CollectibleType.COLLECTIBLE_PISCES, name = "Pisces"},
    {id = CollectibleType.COLLECTIBLE_EVES_MASCARA, name = "Eve's Mascara"},
    {id = CollectibleType.COLLECTIBLE_JUDAS_SHADOW, name = "Judas' Shadow"},
    {id = CollectibleType.COLLECTIBLE_MAGGYS_BOW, name = "Maggy's Bow"},
    {id = CollectibleType.COLLECTIBLE_HOLY_MANTLE, name = "Holy Mantle"},
    {id = CollectibleType.COLLECTIBLE_THUNDER_THIGHS, name = "Thunder Thighs"},
    {id = CollectibleType.COLLECTIBLE_STRANGE_ATTRACTOR, name = "Strange Attractor"},
    {id = CollectibleType.COLLECTIBLE_CURSED_EYE, name = "Cursed Eye"},
    {id = CollectibleType.COLLECTIBLE_MYSTERIOUS_LIQUID, name = "Mysterious Liquid"},
    {id = CollectibleType.COLLECTIBLE_GEMINI, name = "Gemini"},
    {id = CollectibleType.COLLECTIBLE_CAINS_OTHER_EYE, name = "Cain's Other Eye"},
    {id = CollectibleType.COLLECTIBLE_BLUE_BABYS_ONLY_FRIEND, name = "Blue Baby's Only Friend"},
    {id = CollectibleType.COLLECTIBLE_SAMSONS_CHAINS, name = "Samson's Chains"},
    {id = CollectibleType.COLLECTIBLE_MONGO_BABY, name = "Mongo Baby"},
    {id = CollectibleType.COLLECTIBLE_ISAACS_TEARS, name = "Isaac's Tears"},
    {id = CollectibleType.COLLECTIBLE_UNDEFINED, name = "Undefined"},
    {id = CollectibleType.COLLECTIBLE_SCISSORS, name = "Scissors"},
    {id = CollectibleType.COLLECTIBLE_BREATH_OF_LIFE, name = "Breath of Life"},
    {id = CollectibleType.COLLECTIBLE_POLAROID, name = "Polaroid"},
    {id = CollectibleType.COLLECTIBLE_NEGATIVE, name = "Negative"},
    {id = CollectibleType.COLLECTIBLE_LUDOVICO_TECHNIQUE, name = "Ludovico Technique"},
    {id = CollectibleType.COLLECTIBLE_SOY_MILK, name = "Soy Milk"},
    {id = CollectibleType.COLLECTIBLE_GODHEAD, name = "Godhead"},
    {id = CollectibleType.COLLECTIBLE_LAZARUS_RAGS, name = "Lazarus' Rags"},
    {id = CollectibleType.COLLECTIBLE_MIND, name = "Mind"},
    {id = CollectibleType.COLLECTIBLE_BODY, name = "Body"},
    {id = CollectibleType.COLLECTIBLE_SOUL, name = "Soul"},
    {id = CollectibleType.COLLECTIBLE_DEAD_ONION, name = "Dead Onion"},
    {id = CollectibleType.COLLECTIBLE_BROKEN_WATCH, name = "Broken Watch"},
    {id = CollectibleType.COLLECTIBLE_BOOMERANG, name = "Boomerang"},
    {id = CollectibleType.COLLECTIBLE_SAFETY_PIN, name = "Safety Pin"},
    {id = CollectibleType.COLLECTIBLE_CAFFEINE_PILL, name = "Caffeine Pill"},
    {id = CollectibleType.COLLECTIBLE_TORN_PHOTO, name = "Torn Photo"},
    {id = CollectibleType.COLLECTIBLE_BLUE_CAP, name = "Blue Cap"},
    {id = CollectibleType.COLLECTIBLE_LATCH_KEY, name = "Latch Key"},
    {id = CollectibleType.COLLECTIBLE_MATCH_BOOK, name = "Match Book"},
    {id = CollectibleType.COLLECTIBLE_SYNTHOIL, name = "Synthoil"},
    {id = CollectibleType.COLLECTIBLE_SNACK, name = "Snack"},
    {id = CollectibleType.COLLECTIBLE_DIPLOPIA, name = "Diplopia"},
    {id = CollectibleType.COLLECTIBLE_PLACEBO, name = "Placebo"},
    {id = CollectibleType.COLLECTIBLE_WOODEN_NICKEL, name = "Wooden Nickel"},
    {id = CollectibleType.COLLECTIBLE_TOXIC_SHOCK, name = "Toxic Shock"},
    {id = CollectibleType.COLLECTIBLE_MEGA_BEAN, name = "Mega Bean"},
    {id = CollectibleType.COLLECTIBLE_GLASS_CANNON, name = "Glass Cannon"},
    {id = CollectibleType.COLLECTIBLE_BOMBER_BOY, name = "Bomber Boy"},
    {id = CollectibleType.COLLECTIBLE_CRACK_JACKS, name = "Crack Jacks"},
    {id = CollectibleType.COLLECTIBLE_MOMS_PEARLS, name = "Mom's Pearls"},
    {id = CollectibleType.COLLECTIBLE_CAR_BATTERY, name = "Car Battery"},
    {id = CollectibleType.COLLECTIBLE_BOX_OF_FRIENDS, name = "Box of Friends"},
    {id = CollectibleType.COLLECTIBLE_THE_WIZ, name = "The Wiz"},
    {id = CollectibleType.COLLECTIBLE_8_INCH_NAILS, name = "8 Inch Nails"},
    {id = CollectibleType.COLLECTIBLE_INCUBUS, name = "Incubus"},
    {id = CollectibleType.COLLECTIBLE_FATES_REWARD, name = "Fate's Reward"},
    {id = CollectibleType.COLLECTIBLE_LIL_CHEST, name = "Lil' Chest"},
    {id = CollectibleType.COLLECTIBLE_SWORN_PROTECTOR, name = "Sworn Protector"},
    {id = CollectibleType.COLLECTIBLE_FRIEND_ZONE, name = "Friend Zone"},
    {id = CollectibleType.COLLECTIBLE_LOST_FLY, name = "Lost Fly"},
    {id = CollectibleType.COLLECTIBLE_SCATTER_BOMBS, name = "Scatter Bombs"},
    {id = CollectibleType.COLLECTIBLE_STICKY_BOMBS, name = "Sticky Bombs"},
    {id = CollectibleType.COLLECTIBLE_EPIPHORA, name = "Epiphora"},
    {id = CollectibleType.COLLECTIBLE_CONTINUUM, name = "Continuum"},
    {id = CollectibleType.COLLECTIBLE_MR_DOLLY, name = "Mr. Dolly"},
    {id = CollectibleType.COLLECTIBLE_CURSE_OF_THE_TOWER, name = "Curse of the Tower"},
    {id = CollectibleType.COLLECTIBLE_CHARGED_BABY, name = "Charged Baby"},
    {id = CollectibleType.COLLECTIBLE_DEAD_EYE, name = "Dead Eye"},
    {id = CollectibleType.COLLECTIBLE_HOLY_LIGHT, name = "Holy Light"},
    {id = CollectibleType.COLLECTIBLE_HOST_HAT, name = "Host Hat"},
    {id = CollectibleType.COLLECTIBLE_RESTOCK, name = "Restock"},
    {id = CollectibleType.COLLECTIBLE_BURSTING_SACK, name = "Bursting Sack"},
    {id = CollectibleType.COLLECTIBLE_NUMBER_TWO, name = "Number Two"},
    {id = CollectibleType.COLLECTIBLE_PUPULA_DUPLEX, name = "Pupula Duplex"},
    {id = CollectibleType.COLLECTIBLE_PAY_TO_PLAY, name = "Pay to Play"},
    {id = CollectibleType.COLLECTIBLE_EDENS_BLESSING, name = "Eden's Blessing"},
    {id = CollectibleType.COLLECTIBLE_FRIEND_BALL, name = "Friend Ball"},
    {id = CollectibleType.COLLECTIBLE_TEAR_DETONATOR, name = "Tear Detonator"},
    {id = CollectibleType.COLLECTIBLE_LIL_GURDY, name = "Lil' Gurdy"},
    {id = CollectibleType.COLLECTIBLE_BUMBO, name = "Bumbo"},
    {id = CollectibleType.COLLECTIBLE_D12, name = "D12"},
    {id = CollectibleType.COLLECTIBLE_CENSER, name = "Censer"},
    {id = CollectibleType.COLLECTIBLE_KEY_BUM, name = "Key Bum"},
    {id = CollectibleType.COLLECTIBLE_RUNE_BAG, name = "Rune Bag"},
    {id = CollectibleType.COLLECTIBLE_SERAPHIM, name = "Seraphim"},
    {id = CollectibleType.COLLECTIBLE_BETRAYAL, name = "Betrayal"},
    {id = CollectibleType.COLLECTIBLE_ZODIAC, name = "Zodiac"},
    {id = CollectibleType.COLLECTIBLE_SERPENTS_KISS, name = "Serpent's Kiss"},
    {id = CollectibleType.COLLECTIBLE_MARKED, name = "Marked"},
    {id = CollectibleType.COLLECTIBLE_TECH_X, name = "Tech X"},
    {id = CollectibleType.COLLECTIBLE_VENTRICLE_RAZOR, name = "Ventricular Razor"},
    {id = CollectibleType.COLLECTIBLE_TRACTOR_BEAM, name = "Tractor Beam"},
    {id = CollectibleType.COLLECTIBLE_GODS_FLESH, name = "God's Flesh"},
    {id = CollectibleType.COLLECTIBLE_MAW_OF_THE_VOID, name = "Maw of the Void"},
    {id = CollectibleType.COLLECTIBLE_SPEAR_OF_DESTINY, name = "Spear of Destiny"},
    {id = CollectibleType.COLLECTIBLE_EXPLOSIVO, name = "Explosivo"},
    {id = CollectibleType.COLLECTIBLE_CHAOS, name = "Chaos"},
    {id = CollectibleType.COLLECTIBLE_SPIDER_MOD, name = "Spider Mod"},
    {id = CollectibleType.COLLECTIBLE_FARTING_BABY, name = "Farting Baby"},
    {id = CollectibleType.COLLECTIBLE_GB_BUG, name = "GB Bug"},
    {id = CollectibleType.COLLECTIBLE_D8, name = "D8"},
    {id = CollectibleType.COLLECTIBLE_PURITY, name = "Purity"},
    {id = CollectibleType.COLLECTIBLE_ATHAME, name = "Athame"},
    {id = CollectibleType.COLLECTIBLE_EMPTY_VESSEL, name = "Empty Vessel"},
    {id = CollectibleType.COLLECTIBLE_EVIL_EYE, name = "Evil Eye"},
    {id = CollectibleType.COLLECTIBLE_LUSTY_BLOOD, name = "Lusty Blood"},
    {id = CollectibleType.COLLECTIBLE_CAMBION_CONCEPTION, name = "Cambion Conception"},
    {id = CollectibleType.COLLECTIBLE_IMMACULATE_CONCEPTION, name = "Immaculate Conception"},
    {id = CollectibleType.COLLECTIBLE_MORE_OPTIONS, name = "More Options"},
    {id = CollectibleType.COLLECTIBLE_CROWN_OF_LIGHT, name = "Crown of Light"},
    {id = CollectibleType.COLLECTIBLE_DEEP_POCKETS, name = "Deep Pockets"},
    {id = CollectibleType.COLLECTIBLE_SUCCUBUS, name = "Succubus"},
    {id = CollectibleType.COLLECTIBLE_FRUIT_CAKE, name = "Fruit Cake"},
    {id = CollectibleType.COLLECTIBLE_TELEPORT_2, name = "Teleport 2"},
    {id = CollectibleType.COLLECTIBLE_BLACK_POWDER, name = "Black Powder"},
    {id = CollectibleType.COLLECTIBLE_KIDNEY_BEAN, name = "Kidney Bean"},
    {id = CollectibleType.COLLECTIBLE_GLOWING_HOUR_GLASS, name = "Glowing Hour Glass"},
    {id = CollectibleType.COLLECTIBLE_CIRCLE_OF_PROTECTION, name = "Circle of Protection"},
    {id = CollectibleType.COLLECTIBLE_SACK_HEAD, name = "Sack Head"},
    {id = CollectibleType.COLLECTIBLE_NIGHT_LIGHT, name = "Night Light"},
    {id = CollectibleType.COLLECTIBLE_OBSESSED_FAN, name = "Obsessed Fan"},
    {id = CollectibleType.COLLECTIBLE_MINE_CRAFTER, name = "Mine Crafter"},
    {id = CollectibleType.COLLECTIBLE_PJS, name = "PJs"},
    {id = CollectibleType.COLLECTIBLE_HEAD_OF_THE_KEEPER, name = "Head of the Keeper"},
    {id = CollectibleType.COLLECTIBLE_PAPA_FLY, name = "Papa Fly"},
    {id = CollectibleType.COLLECTIBLE_MULTIDIMENSIONAL_BABY, name = "Multidimensional Baby"},
    {id = CollectibleType.COLLECTIBLE_GLITTER_BOMBS, name = "Glitter Bombs"},
    {id = CollectibleType.COLLECTIBLE_MY_SHADOW, name = "My Shadow"},
    {id = CollectibleType.COLLECTIBLE_JAR_OF_FLIES, name = "Jar of Flies"},
    {id = CollectibleType.COLLECTIBLE_LIL_LOKI, name = "Lil Loki"},
    {id = CollectibleType.COLLECTIBLE_MILK, name = "Milk"},
    {id = CollectibleType.COLLECTIBLE_D7, name = "D7"},
    {id = CollectibleType.COLLECTIBLE_BINKY, name = "Binky"},
    {id = CollectibleType.COLLECTIBLE_MOMS_BOX, name = "Mom's Box"},
    {id = CollectibleType.COLLECTIBLE_KIDNEY_STONE, name = "Kidney Stone"},
    {id = CollectibleType.COLLECTIBLE_MEGA_BLAST, name = "Mega Blast"}, 
    {id = CollectibleType.COLLECTIBLE_DARK_PRINCES_CROWN, name = "Dark Princess's Crown"}, 
    {id = CollectibleType.COLLECTIBLE_APPLE, name = "Apple"},
    {id = CollectibleType.COLLECTIBLE_LEAD_PENCIL, name = "Lead Pencil"},
    {id = CollectibleType.COLLECTIBLE_DOG_TOOTH, name = "Dog Tooth"},
    {id = CollectibleType.COLLECTIBLE_DEAD_TOOTH, name = "Dead Tooth"},
    {id = CollectibleType.COLLECTIBLE_LINGER_BEAN, name = "Linger Bean"},
    {id = CollectibleType.COLLECTIBLE_SHARD_OF_GLASS, name = "Shard of Glass"},
    {id = CollectibleType.COLLECTIBLE_METAL_PLATE, name = "Metal Plate"},
    {id = CollectibleType.COLLECTIBLE_EYE_OF_GREED, name = "Eye of Greed"},
    {id = CollectibleType.COLLECTIBLE_TAROT_CLOTH, name = "Tarot Cloth"},
    {id = CollectibleType.COLLECTIBLE_VARICOSE_VEINS, name = "Varicose Veins"},
    {id = CollectibleType.COLLECTIBLE_COMPOUND_FRACTURE, name = "Compound Fracture"},
    {id = CollectibleType.COLLECTIBLE_POLYDACTYLY, name = "Polydactyly"},
    {id = CollectibleType.COLLECTIBLE_DADS_LOST_COIN, name = "Dad's Lost Coin"},
    {id = CollectibleType.COLLECTIBLE_MIDNIGHT_SNACK, name = "Midnight Snack"},
    {id = CollectibleType.COLLECTIBLE_CONE_HEAD, name = "Cone Head"},
    {id = CollectibleType.COLLECTIBLE_BELLY_BUTTON, name = "Belly Button"},
    {id = CollectibleType.COLLECTIBLE_SINUS_INFECTION, name = "Sinus Infection"},
    {id = CollectibleType.COLLECTIBLE_GLAUCOMA, name = "Glaucoma"},
    {id = CollectibleType.COLLECTIBLE_PARASITOID, name = "Parasitoid"},
    {id = CollectibleType.COLLECTIBLE_EYE_OF_BELIAL, name = "Eye of Belial"},
    {id = CollectibleType.COLLECTIBLE_SULFURIC_ACID, name = "Sulfuric Acid"},
    {id = CollectibleType.COLLECTIBLE_GLYPH_OF_BALANCE, name = "Glyph of Balance"},
    {id = CollectibleType.COLLECTIBLE_ANALOG_STICK, name = "Analog Stick"},
    {id = CollectibleType.COLLECTIBLE_CONTAGION, name = "Contagion"},
    {id = CollectibleType.COLLECTIBLE_FINGER, name = "Finger"},
    {id = CollectibleType.COLLECTIBLE_SHADE, name = "Shade"},
    {id = CollectibleType.COLLECTIBLE_DEPRESSION, name = "Depression"},
    {id = CollectibleType.COLLECTIBLE_HUSHY, name = "Hushy"},
    {id = CollectibleType.COLLECTIBLE_LIL_MONSTRO, name = "Lil Monstro"},
    {id = CollectibleType.COLLECTIBLE_KING_BABY, name = "King Baby"},
    {id = CollectibleType.COLLECTIBLE_BIG_CHUBBY, name = "Big Chubby"},
    {id = CollectibleType.COLLECTIBLE_BROKEN_GLASS_CANNON, name = "Broken Glass Cannon"},
    {id = CollectibleType.COLLECTIBLE_PLAN_C, name = "Plan C"},
    {id = CollectibleType.COLLECTIBLE_D1, name = "D1"},
    {id = CollectibleType.COLLECTIBLE_VOID, name = "Void"},
    {id = CollectibleType.COLLECTIBLE_PAUSE, name = "Pause"},
    {id = CollectibleType.COLLECTIBLE_SMELTER, name = "Smelter"},
    {id = CollectibleType.COLLECTIBLE_COMPOST, name = "Compost"},
    {id = CollectibleType.COLLECTIBLE_DATAMINER, name = "Dataminer"},
    {id = CollectibleType.COLLECTIBLE_CLICKER, name = "Clicker"},
    {id = CollectibleType.COLLECTIBLE_MAMA_MEGA, name = "Mama Mega"},
    {id = CollectibleType.COLLECTIBLE_WAIT_WHAT, name = "Wait What"},
    {id = CollectibleType.COLLECTIBLE_CROOKED_PENNY, name = "Crooked Penny"},
    {id = CollectibleType.COLLECTIBLE_DULL_RAZOR, name = "Dull Razor"},
    {id = CollectibleType.COLLECTIBLE_POTATO_PEELER, name = "Potato Peeler"},
    {id = CollectibleType.COLLECTIBLE_METRONOME, name = "Metronome"},
    {id = CollectibleType.COLLECTIBLE_D_INFINITY, name = "D-Infinity"},
    {id = CollectibleType.COLLECTIBLE_EDENS_SOUL, name = "Eden's Soul"},
    {id = CollectibleType.COLLECTIBLE_ACID_BABY, name = "Acid Baby"},
    {id = CollectibleType.COLLECTIBLE_YO_LISTEN, name = "Yo Listen"},
    {id = CollectibleType.COLLECTIBLE_ADRENALINE, name = "Adrenaline"},
    {id = CollectibleType.COLLECTIBLE_JACOBS_LADDER, name = "Jacob's Ladder"},
    {id = CollectibleType.COLLECTIBLE_GHOST_PEPPER, name = "Ghost Pepper"},
    {id = CollectibleType.COLLECTIBLE_EUTHANASIA, name = "Euthanasia"},
    {id = CollectibleType.COLLECTIBLE_CAMO_UNDIES, name = "Camo Undies"},
    {id = CollectibleType.COLLECTIBLE_DUALITY, name = "Duality"},
    {id = CollectibleType.COLLECTIBLE_EUCHARIST, name = "Eucharist"},
    {id = CollectibleType.COLLECTIBLE_SACK_OF_SACKS, name = "Sack of Sacks"},
    {id = CollectibleType.COLLECTIBLE_GREEDS_GULLET, name = "Greed's Gullet"},
    {id = CollectibleType.COLLECTIBLE_LARGE_ZIT, name = "Large Zit"},
    {id = CollectibleType.COLLECTIBLE_LITTLE_HORN, name = "Little Horn"},
    {id = CollectibleType.COLLECTIBLE_BROWN_NUGGET, name = "Brown Nugget"},
    {id = CollectibleType.COLLECTIBLE_POKE_GO, name = "Poke Go"},
    {id = CollectibleType.COLLECTIBLE_BACKSTABBER, name = "Backstabber"},
    {id = CollectibleType.COLLECTIBLE_SHARP_STRAW, name = "Sharp Straw"},
    {id = CollectibleType.COLLECTIBLE_MOMS_RAZOR, name = "Mom's Razor"},
    {id = CollectibleType.COLLECTIBLE_BLOODSHOT_EYE, name = "Bloodshot Eye"},
    {id = CollectibleType.COLLECTIBLE_DELIRIOUS, name = "Delirious"},
    {id = CollectibleType.COLLECTIBLE_ANGRY_FLY, name = "Angry Fly"},
    {id = CollectibleType.COLLECTIBLE_BLACK_HOLE, name = "Black Hole"},
    {id = CollectibleType.COLLECTIBLE_BOZO, name = "Bozo"},
    {id = CollectibleType.COLLECTIBLE_BROKEN_MODEM, name = "Broken Modem"},
    {id = CollectibleType.COLLECTIBLE_MYSTERY_GIFT, name = "Mystery Gift"},
    {id = CollectibleType.COLLECTIBLE_SPRINKLER, name = "Sprinkler"},
    {id = CollectibleType.COLLECTIBLE_FAST_BOMBS, name = "Fast Bombs"},
    {id = CollectibleType.COLLECTIBLE_BUDDY_IN_A_BOX, name = "Buddy in a Box"},
    {id = CollectibleType.COLLECTIBLE_LIL_DELIRIUM, name = "Lil Delirium"},
    {id = CollectibleType.COLLECTIBLE_JUMPER_CABLES, name = "Jumper Cables"},
    {id = CollectibleType.COLLECTIBLE_COUPON, name = "Coupon"},
    {id = CollectibleType.COLLECTIBLE_TELEKINESIS, name = "Telekinesis"},
    {id = CollectibleType.COLLECTIBLE_MOVING_BOX, name = "Moving Box"},
    {id = CollectibleType.COLLECTIBLE_TECHNOLOGY_ZERO, name = "Technology Zero"},
    {id = CollectibleType.COLLECTIBLE_LEPROSY, name = "Leprosy"},
    {id = CollectibleType.COLLECTIBLE_7_SEALS, name = "7 Seals"},
    {id = CollectibleType.COLLECTIBLE_MR_ME, name = "Mr. Me"},
    {id = CollectibleType.COLLECTIBLE_ANGELIC_PRISM, name = "Angelic Prism"},
    {id = CollectibleType.COLLECTIBLE_POP, name = "Pop"},
    {id = CollectibleType.COLLECTIBLE_DEATHS_LIST, name = "Death's List"},
    {id = CollectibleType.COLLECTIBLE_HAEMOLACRIA, name = "Haemolacria"},
    {id = CollectibleType.COLLECTIBLE_LACHRYPHAGY, name = "Lachryphagy"},
    {id = CollectibleType.COLLECTIBLE_TRISAGION, name = "Trisagion"},
    {id = CollectibleType.COLLECTIBLE_SCHOOLBAG, name = "Schoolbag"},
    {id = CollectibleType.COLLECTIBLE_BLANKET, name = "Blanket"},
    {id = CollectibleType.COLLECTIBLE_SACRIFICIAL_ALTAR, name = "Sacrificial Altar"},
    {id = CollectibleType.COLLECTIBLE_LIL_SPEWER, name = "Lil Spewer"},
    {id = CollectibleType.COLLECTIBLE_MARBLES, name = "Marbles"},
    {id = CollectibleType.COLLECTIBLE_MYSTERY_EGG, name = "Mystery Egg"},
    {id = CollectibleType.COLLECTIBLE_FLAT_STONE, name = "Flat Stone"},
    {id = CollectibleType.COLLECTIBLE_MARROW, name = "Marrow"},
    {id = CollectibleType.COLLECTIBLE_SLIPPED_RIB, name = "Slipped Rib"},
    {id = CollectibleType.COLLECTIBLE_HALLOWED_GROUND, name = "Hallowed Ground"},
    {id = CollectibleType.COLLECTIBLE_POINTY_RIB, name = "Pointy Rib"},
    {id = CollectibleType.COLLECTIBLE_BOOK_OF_THE_DEAD, name = "Book of the Dead"},
    {id = CollectibleType.COLLECTIBLE_DADS_RING, name = "Dad's Ring"},
    {id = CollectibleType.COLLECTIBLE_DIVORCE_PAPERS, name = "Divorce Papers"},
    {id = CollectibleType.COLLECTIBLE_JAW_BONE, name = "Jaw Bone"},
    {id = CollectibleType.COLLECTIBLE_BRITTLE_BONES, name = "Brittle Bones"},
    {id = CollectibleType.COLLECTIBLE_BROKEN_SHOVEL_1, name = "Broken Shovel 1"},
    {id = CollectibleType.COLLECTIBLE_BROKEN_SHOVEL_2, name = "Broken Shovel 2"},
    {id = CollectibleType.COLLECTIBLE_MOMS_SHOVEL, name = "Mom's Shovel"},
    {id = CollectibleType.COLLECTIBLE_MUCORMYCOSIS, name = "Mucormycosis"},
    {id = CollectibleType.COLLECTIBLE_2SPOOKY, name = "2 Spooky"},
    {id = CollectibleType.COLLECTIBLE_GOLDEN_RAZOR, name = "Golden Razor"},
    {id = CollectibleType.COLLECTIBLE_SULFUR, name = "Sulfur"},
    {id = CollectibleType.COLLECTIBLE_FORTUNE_COOKIE, name = "Fortune Cookie"},
    {id = CollectibleType.COLLECTIBLE_EYE_SORE, name = "Eye Sore"},
    {id = CollectibleType.COLLECTIBLE_120_VOLT, name = "120 Volt"},
    {id = CollectibleType.COLLECTIBLE_IT_HURTS, name = "It Hurts"},
    {id = CollectibleType.COLLECTIBLE_ALMOND_MILK, name = "Almond Milk"},
    {id = CollectibleType.COLLECTIBLE_ROCK_BOTTOM, name = "Rock Bottom"},
    {id = CollectibleType.COLLECTIBLE_NANCY_BOMBS, name = "Nancy Bombs"},
    {id = CollectibleType.COLLECTIBLE_BAR_OF_SOAP, name = "Bar of Soap"},
    {id = CollectibleType.COLLECTIBLE_BLOOD_PUPPY, name = "Blood Puppy"},
    {id = CollectibleType.COLLECTIBLE_DREAM_CATCHER, name = "Dream Catcher"},
    {id = CollectibleType.COLLECTIBLE_PASCHAL_CANDLE, name = "Paschal Candle"},
    {id = CollectibleType.COLLECTIBLE_DIVINE_INTERVENTION, name = "Divine Intervention"},
    {id = CollectibleType.COLLECTIBLE_BLOOD_OATH, name = "Blood Oath"},
    {id = CollectibleType.COLLECTIBLE_PLAYDOUGH_COOKIE, name = "Playdough Cookie"},
    {id = CollectibleType.COLLECTIBLE_SOCKS, name = "Socks"},
    {id = CollectibleType.COLLECTIBLE_EYE_OF_THE_OCCULT, name = "Eye of the Occult"},
    {id = CollectibleType.COLLECTIBLE_IMMACULATE_HEART, name = "Immaculate Heart"},
    {id = CollectibleType.COLLECTIBLE_MONSTRANCE, name = "Monstrance"},
    {id = CollectibleType.COLLECTIBLE_INTRUDER, name = "Intruder"},
    {id = CollectibleType.COLLECTIBLE_DIRTY_MIND, name = "Dirty Mind"},
    {id = CollectibleType.COLLECTIBLE_DAMOCLES, name = "Damocles"},
    {id = CollectibleType.COLLECTIBLE_FREE_LEMONADE, name = "Free Lemonade"},
    {id = CollectibleType.COLLECTIBLE_SPIRIT_SWORD, name = "Spirit Sword"},
    {id = CollectibleType.COLLECTIBLE_RED_KEY, name = "Red Key"},
    {id = CollectibleType.COLLECTIBLE_PSY_FLY, name = "Psy Fly"},
    {id = CollectibleType.COLLECTIBLE_WAVY_CAP, name = "Wavy Cap"},
    {id = CollectibleType.COLLECTIBLE_ROCKET_IN_A_JAR, name = "Rocket in a Jar"},
    {id = CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES, name = "Book of Virtues"},
    {id = CollectibleType.COLLECTIBLE_ALABASTER_BOX, name = "Alabaster Box"},
    {id = CollectibleType.COLLECTIBLE_STAIRWAY, name = "Stairway"},
    {id = CollectibleType.COLLECTIBLE_SOL, name = "Sol"},
    {id = CollectibleType.COLLECTIBLE_LUNA, name = "Luna"},
    {id = CollectibleType.COLLECTIBLE_MERCURIUS, name = "Mercurius"},
    {id = CollectibleType.COLLECTIBLE_VENUS, name = "Venus"},
    {id = CollectibleType.COLLECTIBLE_TERRA, name = "Terra"},
    {id = CollectibleType.COLLECTIBLE_MARS, name = "Mars"},
    {id = CollectibleType.COLLECTIBLE_JUPITER, name = "Jupiter"},
    {id = CollectibleType.COLLECTIBLE_SATURNUS, name = "Saturnus"},
    {id = CollectibleType.COLLECTIBLE_URANUS, name = "Uranus"},
    {id = CollectibleType.COLLECTIBLE_NEPTUNUS, name = "Neptunus"},
    {id = CollectibleType.COLLECTIBLE_PLUTO, name = "Pluto"},
    {id = CollectibleType.COLLECTIBLE_VOODOO_HEAD, name = "Voodoo Head"},
    {id = CollectibleType.COLLECTIBLE_EYE_DROPS, name = "Eye Drops"},
    {id = CollectibleType.COLLECTIBLE_ACT_OF_CONTRITION, name = "Act of Contrition"},
    {id = CollectibleType.COLLECTIBLE_MEMBER_CARD, name = "Member Card"},
    {id = CollectibleType.COLLECTIBLE_BATTERY_PACK, name = "Battery Pack"},
    {id = CollectibleType.COLLECTIBLE_MOMS_BRACELET, name = "Mom's Bracelet"},
    {id = CollectibleType.COLLECTIBLE_SCOOPER, name = "Scooper"},
    {id = CollectibleType.COLLECTIBLE_OCULAR_RIFT, name = "Ocular Rift"},
    {id = CollectibleType.COLLECTIBLE_BOILED_BABY, name = "Boiled Baby"},
    {id = CollectibleType.COLLECTIBLE_FREEZER_BABY, name = "Freezer Baby"},
    {id = CollectibleType.COLLECTIBLE_ETERNAL_D6, name = "Eternal D6"},
    {id = CollectibleType.COLLECTIBLE_BIRD_CAGE, name = "Bird Cage"},
    {id = CollectibleType.COLLECTIBLE_LARYNX, name = "Larynx"},
    {id = CollectibleType.COLLECTIBLE_LOST_SOUL, name = "Lost Soul"},
    {id = CollectibleType.COLLECTIBLE_BLOOD_BOMBS, name = "Blood Bombs"},
    {id = CollectibleType.COLLECTIBLE_LIL_DUMPY, name = "Lil' Dumpy"},
    {id = CollectibleType.COLLECTIBLE_BIRDS_EYE, name = "Bird's Eye"},
    {id = CollectibleType.COLLECTIBLE_LODESTONE, name = "Lodestone"},
    {id = CollectibleType.COLLECTIBLE_ROTTEN_TOMATO, name = "Rotten Tomato"},
    {id = CollectibleType.COLLECTIBLE_BIRTHRIGHT, name = "Birthright"},
    {id = CollectibleType.COLLECTIBLE_RED_STEW, name = "Red Stew"},
    {id = CollectibleType.COLLECTIBLE_GENESIS, name = "Genesis"},
    {id = CollectibleType.COLLECTIBLE_SHARP_KEY, name = "Sharp Key"},
    {id = CollectibleType.COLLECTIBLE_BOOSTER_PACK, name = "Booster Pack"},
    {id = CollectibleType.COLLECTIBLE_MEGA_MUSH, name = "Mega Mush"},
    {id = CollectibleType.COLLECTIBLE_KNIFE_PIECE_1, name = "Knife Piece 1"},
    {id = CollectibleType.COLLECTIBLE_KNIFE_PIECE_2, name = "Knife Piece 2"},
    {id = CollectibleType.COLLECTIBLE_DEATH_CERTIFICATE, name = "Death Certificate"},
    {id = CollectibleType.COLLECTIBLE_BOT_FLY, name = "Bot Fly"},
    {id = CollectibleType.COLLECTIBLE_MEAT_CLEAVER, name = "Meat Cleaver"},
    {id = CollectibleType.COLLECTIBLE_EVIL_CHARM, name = "Evil Charm"},
    {id = CollectibleType.COLLECTIBLE_DOGMA, name = "Dogma"},
    {id = CollectibleType.COLLECTIBLE_PURGATORY, name = "Purgatory"},
    {id = CollectibleType.COLLECTIBLE_STITCHES, name = "Stitches"},
    {id = CollectibleType.COLLECTIBLE_R_KEY, name = "R-Key"},
    {id = CollectibleType.COLLECTIBLE_KNOCKOUT_DROPS, name = "Knockout Drops"},
    {id = CollectibleType.COLLECTIBLE_ERASER, name = "Eraser"},
    {id = CollectibleType.COLLECTIBLE_YUCK_HEART, name = "Yuck Heart"},
    {id = CollectibleType.COLLECTIBLE_URN_OF_SOULS, name = "Urn of Souls"},
    {id = CollectibleType.COLLECTIBLE_AKELDAMA, name = "Akeldama"},
    {id = CollectibleType.COLLECTIBLE_MAGIC_SKIN, name = "Magic Skin"},
    {id = CollectibleType.COLLECTIBLE_REVELATION, name = "Revelation"},
    {id = CollectibleType.COLLECTIBLE_CONSOLATION_PRIZE, name = "Consolation Prize"},
    {id = CollectibleType.COLLECTIBLE_TINYTOMA, name = "TinyToma"},
    {id = CollectibleType.COLLECTIBLE_BRIMSTONE_BOMBS, name = "Brimstone Bombs"},
    {id = CollectibleType.COLLECTIBLE_4_5_VOLT, name = "4.5 Volt"},
    {id = CollectibleType.COLLECTIBLE_FRUITY_PLUM, name = "Fruity Plum"},
    {id = CollectibleType.COLLECTIBLE_PLUM_FLUTE, name = "Plum Flute"},
    {id = CollectibleType.COLLECTIBLE_STAR_OF_BETHLEHEM, name = "Star of Bethlehem"},
    {id = CollectibleType.COLLECTIBLE_CUBE_BABY, name = "Cube Baby"},
    {id = CollectibleType.COLLECTIBLE_VADE_RETRO, name = "Vade Retro"},
    {id = CollectibleType.COLLECTIBLE_FALSE_PHD, name = "False PHD"},
    {id = CollectibleType.COLLECTIBLE_SPIN_TO_WIN, name = "Spin to Win"},
    {id = CollectibleType.COLLECTIBLE_DAMOCLES_PASSIVE, name = "Damocles Passive"},
    {id = CollectibleType.COLLECTIBLE_VASCULITIS, name = "Vasculitis"},
    {id = CollectibleType.COLLECTIBLE_GIANT_CELL, name = "Giant Cell"},
    {id = CollectibleType.COLLECTIBLE_TROPICAMIDE, name = "Tropicamide"},
    {id = CollectibleType.COLLECTIBLE_CARD_READING, name = "Card Reading"},
    {id = CollectibleType.COLLECTIBLE_QUINTS, name = "Quints"},
    {id = CollectibleType.COLLECTIBLE_TOOTH_AND_NAIL, name = "Tooth and Nail"},
    {id = CollectibleType.COLLECTIBLE_BINGE_EATER, name = "Binge Eater"},
    {id = CollectibleType.COLLECTIBLE_GUPPYS_EYE, name = "Guppy's Eye"},
    {id = CollectibleType.COLLECTIBLE_STRAW_MAN, name = "Straw Man"},
    {id = CollectibleType.COLLECTIBLE_DADS_NOTE, name = "Dad's Note"},
    {id = CollectibleType.COLLECTIBLE_SAUSAGE, name = "Sausage"},
    {id = CollectibleType.COLLECTIBLE_OPTIONS, name = "Options"},
    {id = CollectibleType.COLLECTIBLE_CANDY_HEART, name = "Candy Heart"},
    {id = CollectibleType.COLLECTIBLE_POUND_OF_FLESH, name = "Pound of Flesh"},
    {id = CollectibleType.COLLECTIBLE_REDEMPTION, name = "Redemption"},
    {id = CollectibleType.COLLECTIBLE_SPIRIT_SHACKLES, name = "Spirit Shackles"},
    {id = CollectibleType.COLLECTIBLE_CRACKED_ORB, name = "Cracked Orb"},
    {id = CollectibleType.COLLECTIBLE_EMPTY_HEART, name = "Empty Heart"},
    {id = CollectibleType.COLLECTIBLE_ASTRAL_PROJECTION, name = "Astral Projection"},
    {id = CollectibleType.COLLECTIBLE_C_SECTION, name = "C-Section"},
    {id = CollectibleType.COLLECTIBLE_LIL_ABADDON, name = "Lil Abaddon"},
    {id = CollectibleType.COLLECTIBLE_MONTEZUMAS_REVENGE, name = "Montezuma's Revenge"},
    {id = CollectibleType.COLLECTIBLE_LIL_PORTAL, name = "Lil Portal"},
    {id = CollectibleType.COLLECTIBLE_WORM_FRIEND, name = "Worm Friend"},
    {id = CollectibleType.COLLECTIBLE_BONE_SPURS, name = "Bone Spurs"},
    {id = CollectibleType.COLLECTIBLE_HUNGRY_SOUL, name = "Hungry Soul"},
    {id = CollectibleType.COLLECTIBLE_JAR_OF_WISPS, name = "Jar of Wisps"},
    {id = CollectibleType.COLLECTIBLE_SOUL_LOCKET, name = "Soul Locket"},
    {id = CollectibleType.COLLECTIBLE_FRIEND_FINDER, name = "Friend Finder"},
    {id = CollectibleType.COLLECTIBLE_INNER_CHILD, name = "Inner Child"},
    {id = CollectibleType.COLLECTIBLE_GLITCHED_CROWN, name = "Glitched Crown"},
    {id = CollectibleType.COLLECTIBLE_JELLY_BELLY, name = "Jelly Belly"},
    {id = CollectibleType.COLLECTIBLE_SACRED_ORB, name = "Sacred Orb"},
    {id = CollectibleType.COLLECTIBLE_SANGUINE_BOND, name = "Sanguine Bond"},
    {id = CollectibleType.COLLECTIBLE_SWARM, name = "Swarm"},
    {id = CollectibleType.COLLECTIBLE_HEARTBREAK, name = "Heartbreak"},
    {id = CollectibleType.COLLECTIBLE_BLOODY_GUST, name = "Bloody Gust"},
    {id = CollectibleType.COLLECTIBLE_SALVATION, name = "Salvation"},
    {id = CollectibleType.COLLECTIBLE_VANISHING_TWIN, name = "Vanishing Twin"},
    {id = CollectibleType.COLLECTIBLE_TWISTED_PAIR, name = "Twisted Pair"},
    {id = CollectibleType.COLLECTIBLE_AZAZELS_RAGE, name = "Azazel's Rage"},
    {id = CollectibleType.COLLECTIBLE_ECHO_CHAMBER, name = "Echo Chamber"},
    {id = CollectibleType.COLLECTIBLE_ISAACS_TOMB, name = "Isaac's Tomb"},
    {id = CollectibleType.COLLECTIBLE_VENGEFUL_SPIRIT, name = "Vengeful Spirit"},
    {id = CollectibleType.COLLECTIBLE_ESAU_JR, name = "Esau Jr."},
    {id = CollectibleType.COLLECTIBLE_BERSERK, name = "Berserk"},
    {id = CollectibleType.COLLECTIBLE_DARK_ARTS, name = "Dark Arts"},
    {id = CollectibleType.COLLECTIBLE_ABYSS, name = "Abyss"},
    {id = CollectibleType.COLLECTIBLE_SUPPER, name = "Supper"},
    {id = CollectibleType.COLLECTIBLE_STAPLER, name = "Stapler"},
    {id = CollectibleType.COLLECTIBLE_SUPLEX, name = "Suplex"},
    {id = CollectibleType.COLLECTIBLE_BAG_OF_CRAFTING, name = "Bag of Crafting"},
    {id = CollectibleType.COLLECTIBLE_FLIP, name = "Flip"},
    {id = CollectibleType.COLLECTIBLE_LEMEGETON, name = "Lemegeton"},
    {id = CollectibleType.COLLECTIBLE_SUMPTORIUM, name = "Sumptorium"},
    {id = CollectibleType.COLLECTIBLE_RECALL, name = "Recall"},
    {id = CollectibleType.COLLECTIBLE_HOLD, name = "Hold"},
    {id = CollectibleType.COLLECTIBLE_KEEPERS_SACK, name = "Keeper's Sack"},
    {id = CollectibleType.COLLECTIBLE_KEEPERS_KIN, name = "Keeper's Kin"},
    {id = CollectibleType.COLLECTIBLE_KEEPERS_BOX, name = "Keeper's Box"},
    {id = CollectibleType.COLLECTIBLE_EVERYTHING_JAR, name = "Everything Jar"},
    {id = CollectibleType.COLLECTIBLE_TMTRAINER, name = "TM Trainer"},
    {id = CollectibleType.COLLECTIBLE_ANIMA_SOLA, name = "Anima Sola"},
    {id = CollectibleType.COLLECTIBLE_SPINDOWN_DICE, name = "Spindown Dice"},
    {id = CollectibleType.COLLECTIBLE_HYPERCOAGULATION, name = "Hypercoagulation"},
    {id = CollectibleType.COLLECTIBLE_IBS, name = "IBS"},
    {id = CollectibleType.COLLECTIBLE_HEMOPTYSIS, name = "Hemoptysis"},
    {id = CollectibleType.COLLECTIBLE_GHOST_BOMBS, name = "Ghost Bombs"},
    {id = CollectibleType.COLLECTIBLE_GELLO, name = "Gello"},
    {id = CollectibleType.COLLECTIBLE_DECAP_ATTACK, name = "Decap Attack"},
    {id = CollectibleType.COLLECTIBLE_GLASS_EYE, name = "Glass Eye"},
    {id = CollectibleType.COLLECTIBLE_STYE, name = "Stye"},
    {id = CollectibleType.COLLECTIBLE_MOMS_RING, name = "Mom's Ring"},
}

local page = 0
local selected = 1
local menuVisible = false
local lastPressedTime = {}
local cooldown = 8

-- Dil ve yardım yazıları
local currentLanguage = "tr"

local helpTexts = {
    tr = {
        nextPage = "X Diger Sayfa (X)",
        prevPage = "Z Onceki Sayfa (Z)",
        takeItem = "C tusu ile al",
        spawnItem = "V tusu ile spawn et",
        langInfo = "Dil: N = Ingilizce, B = Turkce",
        maderr = "KREASY TARAFINDAN YAPILDI",
        pageText = "Sayfa"
    },
    en = {
        nextPage = "X Next Page (X)",
        prevPage = "Z Previous Page (Z)",
        takeItem = "Press C to take",
        spawnItem = "Press V to spawn",
        langInfo = "Language: N = English, B = Turkish",
        maderr = "MADE BY KREASY",
        pageText = "Page"
    }
}

-- Tuş kodları
local KEY_0 = Keyboard.KEY_0
local KEY_DOWN = Keyboard.KEY_DOWN
local KEY_UP = Keyboard.KEY_UP
local KEY_LEFT = Keyboard.KEY_LEFT
local KEY_RIGHT = Keyboard.KEY_RIGHT
local KEY_X = Keyboard.KEY_X
local KEY_Z = Keyboard.KEY_Z
local KEY_C = Keyboard.KEY_C
local KEY_V = Keyboard.KEY_V
local KEY_N = Keyboard.KEY_N
local KEY_B = Keyboard.KEY_B
local KEY_9 = Keyboard.KEY_9
local KEY_8 = Keyboard.KEY_8

-- Tuş kontrol fonksiyonları
local function canPressKey(key)
    local currentFrame = Game():GetFrameCount()
    if lastPressedTime[key] == nil then lastPressedTime[key] = 0 end
    return currentFrame - lastPressedTime[key] > cooldown
end

local function setKeyCooldown(key)
    lastPressedTime[key] = Game():GetFrameCount()
end

-- Menu çizimi
function mod:RenderMenu()
    if not menuVisible then return end

    local baseX, baseY = 60, 60
    local itemsPerPage = 12
    local startIndex = page * itemsPerPage + 1

    for i = 0, 11 do
        local item = items[startIndex + i]
        if item then
            local col = i % 4
            local row = math.floor(i / 4)
            local x = baseX + col * 110
            local y = baseY + row * 25
            local isSelected = (i + 1 == selected)

            if isSelected then
                Isaac.RenderText("> " .. item.name, x, y, 1, 0, 0, 1)
            else
                Isaac.RenderText(item.name, x, y, 0.8, 0.8, 0.8, 1)
            end
        end
    end

    local lang = helpTexts[currentLanguage]
    local totalPages = math.max(1, math.ceil(#items / itemsPerPage))

    Isaac.RenderText(lang.pageText .. ": " .. (page + 1) .. " / " .. totalPages, baseX, baseY + 100, 1, 1, 1, 1)
    Isaac.RenderText(lang.nextPage, baseX + 240, baseY + 140, 1, 1, 0, 1)
    Isaac.RenderText(lang.prevPage, baseX + 240, baseY + 160, 1, 1, 0, 1)
    Isaac.RenderText(lang.langInfo, baseX, baseY + 140, 1, 1, 1, 1)
    Isaac.RenderText(lang.takeItem, baseX, baseY + 160, 1, 1, 0, 1)
    Isaac.RenderText(lang.spawnItem, baseX, baseY + 180, 1, 1, 0, 1)
    Isaac.RenderText(lang.maderr, baseX + 220, baseY + 175, 1, 1, 1, 1)
end

-- Input kontrolü
function mod:UpdateInput()
    local player = Isaac.GetPlayer(0)
    local itemsPerPage = 12
    local maxPage = math.floor((#items - 1) / itemsPerPage)

    if Input.IsButtonPressed(KEY_0, 0) and canPressKey(KEY_0) then
        menuVisible = not menuVisible
        setKeyCooldown(KEY_0)
    end

    -- 9 tuşu sadece menü açıkken kapatsın
    if Input.IsButtonPressed(KEY_9, 0) and canPressKey(KEY_9) then
        if menuVisible then
            menuVisible = false
            setKeyCooldown(KEY_9)
        end
    end

    -- 8 tuşu sadece menü açıkken kapatsın
    if Input.IsButtonPressed(KEY_8, 0) and canPressKey(KEY_8) then
        if menuVisible then
            menuVisible = false
            setKeyCooldown(KEY_8)
        end
    end

    if Input.IsButtonPressed(KEY_N, 0) and canPressKey(KEY_N) then
        currentLanguage = "en"
        setKeyCooldown(KEY_N)
    elseif Input.IsButtonPressed(KEY_B, 0) and canPressKey(KEY_B) then
        currentLanguage = "tr"
        setKeyCooldown(KEY_B)
    end

    if menuVisible then
        if Input.IsButtonPressed(KEY_DOWN, 0) and canPressKey(KEY_DOWN) then
            selected = (selected + 4 > 12) and selected or selected + 4
            setKeyCooldown(KEY_DOWN)
        elseif Input.IsButtonPressed(KEY_UP, 0) and canPressKey(KEY_UP) then
            selected = (selected - 4 < 1) and selected or selected - 4
            setKeyCooldown(KEY_UP)
        elseif Input.IsButtonPressed(KEY_LEFT, 0) and canPressKey(KEY_LEFT) then
            selected = (selected - 1 < 1) and selected or selected - 1
            setKeyCooldown(KEY_LEFT)
        elseif Input.IsButtonPressed(KEY_RIGHT, 0) and canPressKey(KEY_RIGHT) then
            selected = (selected + 1 > 12) and selected or selected + 1
            setKeyCooldown(KEY_RIGHT)
        elseif Input.IsButtonPressed(KEY_X, 0) and canPressKey(KEY_X) then
            if page < maxPage then
                page = page + 1
                selected = 1
            end
            setKeyCooldown(KEY_X)
        elseif Input.IsButtonPressed(KEY_Z, 0) and canPressKey(KEY_Z) then
            page = math.max(page - 1, 0)
            selected = 1
            setKeyCooldown(KEY_Z)
        elseif Input.IsButtonPressed(KEY_C, 0) and canPressKey(KEY_C) then
            local index = page * 12 + selected
            local item = items[index]
            if item then
                player:AddCollectible(item.id, 0, true)
            end
            setKeyCooldown(KEY_C)
        elseif Input.IsButtonPressed(KEY_V, 0) and canPressKey(KEY_V) then
            local index = page * 12 + selected
            local item = items[index]
            if item then
                local pos = player.Position
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, item.id, pos, Vector(0, 0), nil)
            end
            setKeyCooldown(KEY_V)
        end
    end
end

mod:AddCallback(ModCallbacks.MC_POST_UPDATE, mod.UpdateInput)
mod:AddCallback(ModCallbacks.MC_POST_RENDER, mod.RenderMenu)

function mod:OnNewRun()
    lastPressedTime = {}
    menuVisible = false
    page = 0
    selected = 1
end

mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, mod.OnNewRun)


local mod = RegisterMod("Kreasy Menu", 1)

local items = {
    {type = "pickup", variant = PickupVariant.PICKUP_HEART, id = HeartSubType.HEART_FULL, name = "Red Heart"},
    {type = "pickup", variant = PickupVariant.PICKUP_HEART, id = HeartSubType.HEART_HALF, name = "Half Heart"},
    {type = "pickup", variant = PickupVariant.PICKUP_HEART, id = HeartSubType.HEART_DOUBLEPACK, name = "Double Pack"},
    {type = "pickup", variant = PickupVariant.PICKUP_HEART, id = HeartSubType.HEART_SOUL, name = "Soul Heart"},
    {type = "pickup", variant = PickupVariant.PICKUP_HEART, id = HeartSubType.HEART_BLACK, name = "Black Heart"},
    {type = "pickup", variant = PickupVariant.PICKUP_HEART, id = HeartSubType.HEART_GOLDEN, name = "Golden Heart"},
    {type = "pickup", variant = PickupVariant.PICKUP_HEART, id = HeartSubType.HEART_ETERNAL, name = "Eternal Heart"},
    {type = "pickup", variant = PickupVariant.PICKUP_HEART, id = HeartSubType.HEART_ROTTEN, name = "Rotten Heart"},
    
    -- Anahtarlar
    {type = "pickup", variant = PickupVariant.PICKUP_KEY, id = KeySubType.KEY_NORMAL, name = "Key"},
    {type = "pickup", variant = PickupVariant.PICKUP_KEY, id = KeySubType.KEY_GOLDEN, name = "Golden Key"},
    {type = "pickup", variant = PickupVariant.PICKUP_KEY, id = KeySubType.KEY_CHARGED, name = "Charged Key"},

    
    -- Bombalar
    {type = "pickup", variant = PickupVariant.PICKUP_BOMB, id = BombSubType.BOMB_NORMAL, name = "Bomb"},
    {type = "pickup", variant = PickupVariant.PICKUP_BOMB, id = BombSubType.BOMB_GOLDEN, name = "Golden Bomb"},

    -- Sandıklar
    {type = "pickup", variant = PickupVariant.PICKUP_LOCKEDCHEST, id = 0, name = "Locked Chest"},
    {type = "pickup", variant = PickupVariant.PICKUP_CHEST, id = 0, name = "Chest"},
    {type = "pickup", variant = PickupVariant.PICKUP_BOMBCHEST, id = 0, name = "Bomb Chest"}, 
    {type = "pickup", variant = PickupVariant.PICKUP_SPIKEDCHEST, id = 0, name = "Spiked Chest"},
    {type = "pickup", variant = PickupVariant.PICKUP_ETERNALCHEST, id = 0, name = "Eternal Chest"},
    {type = "pickup", variant = PickupVariant.PICKUP_MIMICCHEST, id = 0, name = "Mimic Chest"},


    -- Bataryalar
    {type = "battery", id = BatterySubType.BATTERY_NORMAL, name = "Battery"},
    {type = "battery", id = BatterySubType.BATTERY_MEGA, name = "Mega Battery"},
    {type = "battery", id = BatterySubType.BATTERY_GOLDEN, name = "Golden Battery"},

    -- Kartlar
    {type = "card", id = Card.CARD_HIGH_PRIESTESS, name = "The High Priestess"},
    {type = "card", id = Card.CARD_EMPRESS, name = "The Empress"},
    {type = "card", id = Card.CARD_EMPEROR, name = "The Emperor"},
    {type = "card", id = Card.CARD_HIEROPHANT, name = "The Hierophant"},
    {type = "card", id = Card.CARD_LOVERS, name = "The Lovers"},
    {type = "card", id = Card.CARD_CHARIOT, name = "The Chariot"},
    {type = "card", id = Card.CARD_HERMIT, name = "The Hermit"},
    {type = "card", id = Card.CARD_CHAOS, name = "Chaos Card"},
    {type = "card", id = Card.CARD_CREDIT, name = "Credit Card"},
    {type = "card", id = Card.CARD_RULES, name = "Rules Card"},
    {type = "card", id = Card.CARD_HUMANITY, name = "Card Against Humanity"},
    {type = "card", id = Card.CARD_SUICIDE_KING, name = "Suicide King"},
    {type = "card", id = Card.CARD_GET_OUT_OF_JAIL, name = "Get Out of Jail Free Card"},
    {type = "card", id = Card.CARD_QUESTIONMARK, name = "??? Card"},
    {type = "card", id = Card.CARD_DICE_SHARD, name = "Dice Shard"},
    {type = "card", id = Card.CARD_EMERGENCY_CONTACT, name = "Emergency Contact"},
    {type = "card", id = Card.CARD_HOLY, name = "Holy Card"},
    {type = "card", id = Card.CARD_HUGE_GROWTH, name = "Huge Growth"},
    {type = "card", id = Card.CARD_ANCIENT_RECALL, name = "Ancient Recall"},
    {type = "card", id = Card.CARD_ERA_WALK, name = "Era Walk"},
    {type = "card", id = Card.CARD_REVERSE_FOOL, name = "Reverse Fool"},
    {type = "card", id = Card.CARD_REVERSE_MAGICIAN, name = "Reverse Magician"},
    {type = "card", id = Card.CARD_REVERSE_HIGH_PRIESTESS, name = "Reverse High Priestess"},
    {type = "card", id = Card.CARD_REVERSE_EMPRESS, name = "Reverse Empress"},
    {type = "card", id = Card.CARD_REVERSE_EMPEROR, name = "Reverse Emperor"},
    {type = "card", id = Card.CARD_REVERSE_HIEROPHANT, name = "Reverse Hierophant"},
    {type = "card", id = Card.CARD_REVERSE_LOVERS, name = "Reverse Lovers"},
    {type = "card", id = Card.CARD_REVERSE_CHARIOT, name = "Reverse Chariot"},
    {type = "card", id = Card.CARD_REVERSE_JUSTICE, name = "Reverse Justice"},
    {type = "card", id = Card.CARD_REVERSE_HERMIT, name = "Reverse Hermit"},
    {type = "card", id = Card.CARD_REVERSE_WHEEL_OF_FORTUNE, name = "Reverse Wheel of Fortune"},
    {type = "card", id = Card.CARD_REVERSE_STRENGTH, name = "Reverse Strength"},
    {type = "card", id = Card.CARD_REVERSE_HANGED_MAN, name = "Reverse Hanged Man"},
    {type = "card", id = Card.CARD_REVERSE_DEATH, name = "Reverse Death"},
    {type = "card", id = Card.CARD_REVERSE_TEMPERANCE, name = "Reverse Temperance"},
    {type = "card", id = Card.CARD_REVERSE_DEVIL, name = "Reverse Devil"},
    {type = "card", id = Card.CARD_REVERSE_TOWER, name = "Reverse Tower"},
    {type = "card", id = Card.CARD_REVERSE_STARS, name = "Reverse Stars"},
    {type = "card", id = Card.CARD_REVERSE_MOON, name = "Reverse Moon"},
    {type = "card", id = Card.CARD_REVERSE_SUN, name = "Reverse Sun"},
    {type = "card", id = Card.CARD_REVERSE_JUDGEMENT, name = "Reverse Judgement"},
    {type = "card", id = Card.CARD_REVERSE_WORLD, name = "Reverse World"},
    {type = "card", id = Card.CARD_CRACKED_KEY, name = "Cracked Key"},
    {type = "card", id = Card.CARD_QUEEN_OF_HEARTS, name = "Queen of Hearts"},
    {type = "card", id = Card.CARD_WILD, name = "Wild Card"},
    {type = "card", id = Card.CARD_SOUL_ISAAC, name = "Soul of Isaac"},
    {type = "card", id = Card.CARD_SOUL_MAGDALENE, name = "Soul of Magdalene"},
    {type = "card", id = Card.CARD_SOUL_CAIN, name = "Soul of Cain"},
    {type = "card", id = Card.CARD_SOUL_JUDAS, name = "Soul of Judas"},
    {type = "card", id = Card.CARD_SOUL_BLUEBABY, name = "Soul of ???"},
    {type = "card", id = Card.CARD_SOUL_EVE, name = "Soul of Eve"},
    {type = "card", id = Card.CARD_SOUL_SAMSON, name = "Soul of Samson"},
    {type = "card", id = Card.CARD_SOUL_AZAZEL, name = "Soul of Azazel"},
    {type = "card", id = Card.CARD_SOUL_LAZARUS, name = "Soul of Lazarus"},
    {type = "card", id = Card.CARD_SOUL_EDEN, name = "Soul of Eden"},
    {type = "card", id = Card.CARD_SOUL_LOST, name = "Soul of The Lost"},
    {type = "card", id = Card.CARD_SOUL_LILITH, name = "Soul of Lilith"},
    {type = "card", id = Card.CARD_SOUL_KEEPER, name = "Soul of The Keeper"},
    {type = "card", id = Card.CARD_SOUL_APOLLYON, name = "Soul of Apollyon"},
    {type = "card", id = Card.CARD_SOUL_FORGOTTEN, name = "Soul of The Forgotten"},
    {type = "card", id = Card.CARD_SOUL_BETHANY, name = "Soul of Bethany"},
    {type = "card", id = Card.CARD_SOUL_JACOB, name = "Soul of Jacob and Esau"},
    {type = "card", id = Card.CARD_HANGED_MAN, name = "The Hanged Man"},
    {type = "card", id = Card.CARD_DEATH, name = "Death"},
    {type = "card", id = Card.CARD_TEMPERANCE, name = "Temperance"},
    {type = "card", id = Card.CARD_DEVIL, name = "The Devil"},
    {type = "card", id = Card.CARD_TOWER, name = "The Tower"},
    {type = "card", id = Card.CARD_STARS, name = "The Stars"},
    {type = "card", id = Card.CARD_MOON, name = "The Moon"},
    {type = "card", id = Card.CARD_SUN, name = "The Sun"},
    {type = "card", id = Card.CARD_QUEEN_OF_HEARTS, name = "Queen of Hearts"}, -- Bolca kalp
    {type = "card", id = Card.CARD_RULES, name = "Rules Card"}, -- Rasgele yazı efekti yaratır
    {type = "card", id = Card.CARD_JUDGEMENT, name = "Judgement"},
    {type = "card", id = Card.CARD_WORLD, name = "The World"},
}
-- Menü ayarları
local page, selected = 0, 1
local menuVisible = false
local lastPressed = {}
local cooldown = 8
local lang = "tr"

local helpText = {
    tr = {
        nextPage = "X Sonraki Sayfa (X)", prevPage = "Z Onceki Sayfa (Z)",
        spawn = "V ile yere koy", toggleLang = "Dil: N: Ingilizce  B: Turkce",
        madeBy = "KREASY TARAFINDAN YAPILDI", page = "Sayfa"
    },
    en = {
        nextPage = "X Next Page (X)", prevPage = "Z Previous Page (Z)",
        spawn = "Press V to spawn", toggleLang = "Language: N: English  B: Turkish",
        madeBy = "MADE BY KREASY", page = "Page"
    }
}

local function canPress(key)
    local now = Game():GetFrameCount()
    return (now - (lastPressed[key] or 0)) > cooldown
end

local function setPress(key)
    lastPressed[key] = Game():GetFrameCount()
end

function mod:RenderMenu()
    if not menuVisible then return end
    local baseX, baseY = 60, 60
    local perPage = 12
    local start = page * perPage + 1

    for i = 0, 11 do
        local item = items[start + i]
        if item then
            local col = i % 4
            local row = math.floor(i / 4)
            local x = baseX + col * 110
            local y = baseY + row * 25
            local sel = (i + 1 == selected)
            local r, g, b = sel and 1 or 0.8, sel and 0 or 0.8, sel and 0 or 0.8
            Isaac.RenderText((sel and "> " or "  ") .. item.name, x, y, r, g, b, 1)
        end
    end

    local t = helpText[lang]
    local total = math.ceil(#items / perPage)
    Isaac.RenderText(t.page .. ": " .. (page + 1) .. "/" .. total, baseX, baseY + 110, 1, 1, 1, 1)
    Isaac.RenderText(t.nextPage, baseX + 240, baseY + 140, 1, 1, 0, 1)
    Isaac.RenderText(t.prevPage, baseX + 240, baseY + 160, 1, 1, 0, 1)
    Isaac.RenderText(t.toggleLang, baseX, baseY + 140, 1, 1, 1, 1)
    Isaac.RenderText(t.spawn, baseX, baseY + 160, 1, 1, 0, 1)
    Isaac.RenderText(t.madeBy, baseX + 220, baseY + 175, 1, 1, 1, 1)
end

function mod:UpdateInput()
    local p = Isaac.GetPlayer(0)
    local maxPage = math.floor((#items - 1) / 12)

    if Input.IsButtonPressed(Keyboard.KEY_9, 0) and canPress(Keyboard.KEY_9) then
        menuVisible = not menuVisible
        setPress(Keyboard.KEY_9)
    elseif Input.IsButtonPressed(Keyboard.KEY_8, 0) and canPress(Keyboard.KEY_8) then
        if menuVisible then
            menuVisible = false
            setPress(Keyboard.KEY_8)
        end
    elseif Input.IsButtonPressed(Keyboard.KEY_0, 0) and canPress(Keyboard.KEY_0) then
        if menuVisible then
            menuVisible = false
            setPress(Keyboard.KEY_0)
        end
    end

    if Input.IsButtonPressed(Keyboard.KEY_N, 0) and canPress(Keyboard.KEY_N) then
        lang = "en"
        setPress(Keyboard.KEY_N)
    elseif Input.IsButtonPressed(Keyboard.KEY_B, 0) and canPress(Keyboard.KEY_B) then
        lang = "tr"
        setPress(Keyboard.KEY_B)
    end

    if not menuVisible then return end

    if Input.IsButtonPressed(Keyboard.KEY_DOWN, 0) and canPress(Keyboard.KEY_DOWN) then
        selected = selected + 4 <= 12 and selected + 4 or selected
        setPress(Keyboard.KEY_DOWN)
    elseif Input.IsButtonPressed(Keyboard.KEY_UP, 0) and canPress(Keyboard.KEY_UP) then
        selected = selected - 4 >= 1 and selected - 4 or selected
        setPress(Keyboard.KEY_UP)
    elseif Input.IsButtonPressed(Keyboard.KEY_LEFT, 0) and canPress(Keyboard.KEY_LEFT) then
        selected = selected > 1 and selected - 1 or selected
        setPress(Keyboard.KEY_LEFT)
    elseif Input.IsButtonPressed(Keyboard.KEY_RIGHT, 0) and canPress(Keyboard.KEY_RIGHT) then
        selected = selected < 12 and selected + 1 or selected
        setPress(Keyboard.KEY_RIGHT)
    elseif Input.IsButtonPressed(Keyboard.KEY_X, 0) and canPress(Keyboard.KEY_X) then
        if page < maxPage then page = page + 1 selected = 1 end
        setPress(Keyboard.KEY_X)
    elseif Input.IsButtonPressed(Keyboard.KEY_Z, 0) and canPress(Keyboard.KEY_Z) then
        page = math.max(0, page - 1) selected = 1
        setPress(Keyboard.KEY_Z)
    elseif Input.IsButtonPressed(Keyboard.KEY_V, 0) and canPress(Keyboard.KEY_V) then
        local idx = page * 12 + selected
        local item = items[idx]
        if item then
            if item.type == "card" then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TAROTCARD, item.id, p.Position, Vector(0,0), nil)
            elseif item.type == "battery" then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_LIL_BATTERY, item.id, p.Position, Vector(0,0), nil)
            elseif item.type == "pickup" then
                Isaac.Spawn(EntityType.ENTITY_PICKUP, item.variant, item.id, p.Position, Vector(0,0), nil)
            end
        end
        setPress(Keyboard.KEY_V)
    end
end

function mod:OnNewRun()
    lastPressed = {}
    menuVisible = false
    page = 0
    selected = 1
end

mod:AddCallback(ModCallbacks.MC_POST_UPDATE, mod.UpdateInput)
mod:AddCallback(ModCallbacks.MC_POST_RENDER, mod.RenderMenu)
mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, mod.OnNewRun)



local mod = RegisterMod("Mob Menu", 1)

local mobMenuVisible = false
local mobPage = 0
local mobSelected = 1
local cooldown = 8
local lastPressedTime = {}

local currentLang = "tr"

local langText = {
    tr = {
        nextPage = "X Diger Sayfa (X)",
        prevPage = "Z Onceki Sayfa (Z)",
        spawn = "V tusu ile spawn et",
        langInfo = "Dil: N = Ingilizce, B = Turkce",
        madeBy = "KREASY TARAFINDAN YAPILDI",
        pageText = "Sayfa"
    },
    en = {
        nextPage = "X Next Page (X)",
        prevPage = "Z Previous Page (Z)",
        spawn = "Press V to spawn",
        langInfo = "Language: N = English, B = Turkish",
        madeBy = "MADE BY KREASY",
        pageText = "Page"
    }
}

local enemies = {
    {id = EntityType.ENTITY_DUMMY, variant = 0, name = "Dummy"},
    {id = EntityType.ENTITY_FLY, variant = 0, name = "Fly"},
    {id = EntityType.ENTITY_ATTACKFLY, variant = 0, name = "Attack Fly"},
    {id = EntityType.ENTITY_POOTER, variant = 0, name = "Pooter"},
    {id = EntityType.ENTITY_CLOTTY, variant = 0, name = "Clotty"},
    {id = EntityType.ENTITY_HOST, variant = 0, name = "Host"},
    {id = EntityType.ENTITY_GAPER, variant = 0, name = "Gaper"},
    {id = EntityType.ENTITY_GUSHER, variant = 0, name = "Gusher"},
    {id = EntityType.ENTITY_HORF, variant = 0, name = "Horf"},
    {id = EntityType.ENTITY_LEAPER, variant = 0, name = "Leaper"},
    {id = EntityType.ENTITY_MAW, variant = 0, name = "Maw"},
    {id = EntityType.ENTITY_HOPPER, variant = 0, name = "Hopper"},
    {id = EntityType.ENTITY_BOOMFLY, variant = 0, name = "Boom Fly"},
    {id = EntityType.ENTITY_SPIDER, variant = 0, name = "Spider"},
    {id = EntityType.ENTITY_SWARM, variant = 0, name = "Swarm"},
    {id = EntityType.ENTITY_FIREPLACE, variant = 0, name = "Fire Place"},
    {id = EntityType.ENTITY_MONSTRO, variant = 0, name = "Monstro"},
    {id = EntityType.ENTITY_MONSTRO2, variant = 0, name = "Monstro II"},
    {id = EntityType.ENTITY_GURDY, variant = 0, name = "Gurdy"},
    {id = EntityType.ENTITY_GURDY_JR, variant = 0, name = "Gurdy Jr"},
    {id = EntityType.ENTITY_PIN, variant = 0, name = "Pin"},
    {id = EntityType.ENTITY_CHUB, variant = 0, name = "Chub"},
    {id = EntityType.ENTITY_DUKE, variant = 0, name = "Duke of Flies"},
    {id = EntityType.ENTITY_PEEP, variant = 0, name = "Peep"},
    {id = EntityType.ENTITY_LOKI, variant = 0, name = "Loki"},
    {id = EntityType.ENTITY_MOMS_HEART, variant = 0, name = "Mom's Heart"},
    {id = EntityType.ENTITY_ISAAC, variant = 0, name = "Isaac"},
    {id = EntityType.ENTITY_SATAN, variant = 0, name = "Satan"},
    {id = EntityType.ENTITY_THE_HAUNT, variant = 0, name = "The Haunt"},
    {id = EntityType.ENTITY_LITTLE_HORN, variant = 0, name = "Little Horn"},
    {id = EntityType.ENTITY_BIG_HORN, variant = 0, name = "Big Horn"},
    {id = EntityType.ENTITY_MEGA_MAW, variant = 0, name = "Mega Maw"},
    {id = EntityType.ENTITY_MEGA_FATTY, variant = 0, name = "Mega Fatty"},
    {id = EntityType.ENTITY_DARK_ONE, variant = 0, name = "Dark One"},
    {id = EntityType.ENTITY_ADVERSARY, variant = 0, name = "Adversary"},
    {id = EntityType.ENTITY_POLYCEPHALUS, variant = 0, name = "Polycephalus"},
    {id = EntityType.ENTITY_MR_FRED, variant = 0, name = "Mr. Fred"},
    {id = EntityType.ENTITY_CAGE, variant = 0, name = "The Cage"},
    {id = EntityType.ENTITY_MAMA_GURDY, variant = 0, name = "Mama Gurdy"},
    {id = EntityType.ENTITY_WAR, variant = 0, name = "War"},
    {id = EntityType.ENTITY_FAMINE, variant = 0, name = "Famine"},
    {id = EntityType.ENTITY_PESTILENCE, variant = 0, name = "Pestilence"},
    {id = EntityType.ENTITY_DEATH, variant = 0, name = "Death"},
    {id = EntityType.ENTITY_RAG_MAN, variant = 0, name = "Rag Man"},
    {id = EntityType.ENTITY_FORSAKEN, variant = 0, name = "The Forsaken"},
    {id = EntityType.ENTITY_BROWNIE, variant = 0, name = "Brownie"},
    {id = EntityType.ENTITY_SISTERS_VIS, variant = 0, name = "Sisters Vis"},
    {id = EntityType.ENTITY_GATE, variant = 0, name = "The Gate"},
    {id = EntityType.ENTITY_STAIN, variant = 0, name = "The Stain"},
    {id = EntityType.ENTITY_RAG_MEGA, variant = 0, name = "Rag Mega"},
    {id = EntityType.ENTITY_ULTRA_PRIDE, variant = 0, name = "Ultra Pride"},
    {id = EntityType.ENTITY_ULTRA_GREED, variant = 0, name = "Ultra Greed"},
    {id = EntityType.ENTITY_HUSH, variant = 0, name = "Hush"},
    {id = EntityType.ENTITY_DELIRIUM, variant = 0, name = "Delirium"},
    {id = EntityType.ENTITY_DOGMA, variant = 0, name = "Dogma"},
    {id = EntityType.ENTITY_BEAST, variant = 0, name = "The Beast"},
    {id = EntityType.ENTITY_MOTHER, variant = 0, name = "Mother"},
    {id = EntityType.ENTITY_ROTGUT, variant = 0, name = "Rotgut"},
    {id = EntityType.ENTITY_SCOURGE, variant = 0, name = "The Scourge"},
    {id = EntityType.ENTITY_SIREN, variant = 0, name = "The Siren"},
    {id = EntityType.ENTITY_MIN_MIN, variant = 0, name = "Min Min"},
    {id = EntityType.ENTITY_BUMBINO, variant = 0, name = "Bumbino"},
    {id = EntityType.ENTITY_COLOSTOMIA, variant = 0, name = "Colostomia"},
    {id = EntityType.ENTITY_HERETIC, variant = 0, name = "The Heretic"},
    {id = EntityType.ENTITY_CADAVRA, variant = 0, name = "Cadavra"},
    {id = EntityType.ENTITY_CLOG, variant = 0, name = "Clog"},
    {id = EntityType.ENTITY_RAGLICH, variant = 0, name = "Raglich"},
    {id = EntityType.ENTITY_TURDLET, variant = 0, name = "Turdlet"},
    {id = EntityType.ENTITY_SINGE, variant = 0, name = "Singe"},
    {id = EntityType.ENTITY_FALLEN, variant = 0, name = "The Fallen"},
    {id = EntityType.ENTITY_HEADLESS_HORSEMAN, variant = 0, name = "Headless Horseman"},
    {id = EntityType.ENTITY_THE_LAMB, variant = 0, name = "The Lamb"},
    {id = EntityType.ENTITY_MEGA_SATAN, variant = 0, name = "Mega Satan"},
    {id = EntityType.ENTITY_MINISTRO, variant = 0, name = "Ministro"},
    {id = EntityType.ENTITY_FISTULOID, variant = 0, name = "Fistuloid"},
    {id = EntityType.ENTITY_PORTAL, variant = 0, name = "Portal"},
    {id = EntityType.ENTITY_GIDEON, variant = 0, name = "Gideon"},
    {id = EntityType.ENTITY_LIL_BLUB, variant = 0, name = "Lil Blub"},
    {id = EntityType.ENTITY_RAINMAKER, variant = 0, name = "Rainmaker"},
    {id = EntityType.ENTITY_REAP_CREEP, variant = 0, name = "Reap Creep"},
    {id = EntityType.ENTITY_VISAGE, variant = 0, name = "Visage"},
    {id = EntityType.ENTITY_CHIMERA, variant = 0, name = "Chimera"},
    {id = EntityType.ENTITY_SCOURGE, variant = 0, name = "The Scourge"},
    {id = EntityType.ENTITY_ROTGUT, variant = 0, name = "Rotgut"},
    {id = EntityType.ENTITY_MOTHER, variant = 0, name = "Mother"},
    {id = EntityType.ENTITY_BEAST, variant = 0, name = "The Beast"},
    {id = EntityType.ENTITY_DOGMA, variant = 0, name = "Dogma"},
    {id = EntityType.ENTITY_CLOG, variant = 0, name = "Clog"},
    {id = EntityType.ENTITY_MIN_MIN, variant = 0, name = "Min Min"},
    {id = EntityType.ENTITY_SINGE, variant = 0, name = "Singe"},
    {id = EntityType.ENTITY_BUMBINO, variant = 0, name = "Bumbino"},
    {id = EntityType.ENTITY_COLOSTOMIA, variant = 0, name = "Colostomia"},
    {id = EntityType.ENTITY_TURDLET, variant = 0, name = "Turdlet"},
    {id = EntityType.ENTITY_RAGLICH, variant = 0, name = "Raglich"},
    {id = EntityType.ENTITY_HERETIC, variant = 0, name = "The Heretic"},
    {id = EntityType.ENTITY_SIREN, variant = 0, name = "The Siren"},
    {id = EntityType.ENTITY_CLUTCH, variant = 0, name = "Clutch"},
    {id = EntityType.ENTITY_CADAVRA, variant = 0, name = "Cadavra"},
    {id = EntityType.ENTITY_HORNY_BOYS, variant = 0, name = "Horny Boys"},
    {id = EntityType.ENTITY_RAG_MAN, variant = 0, name = "Rag Man"},
    {id = EntityType.ENTITY_RAG_MEGA, variant = 0, name = "Rag Mega"},
    {id = EntityType.ENTITY_WIDOW, variant = 0, name = "The Widow"},
    {id = EntityType.ENTITY_DADDYLONGLEGS, variant = 0, name = "Daddy Long Legs"},
    {id = EntityType.ENTITY_MATRIARCH, variant = 0, name = "The Matriarch"},
    {id = EntityType.ENTITY_BLUBBER, variant = 0, name = "Blubber"},
    {id = EntityType.ENTITY_MEGA_CLOTTY, variant = 0, name = "Mega Clotty"},
    {id = EntityType.ENTITY_MAZE_ROAMER, variant = 0, name = "Maze Roamer"},
    {id = EntityType.ENTITY_EXORCIST, variant = 0, name = "Exorcist"},
    {id = EntityType.ENTITY_NEEDLE, variant = 0, name = "Needle"},
    {id = EntityType.ENTITY_GOAT, variant = 0, name = "Goat"},
    {id = EntityType.ENTITY_CULTIST, variant = 0, name = "Cultist"},
    {id = EntityType.ENTITY_DUMP, variant = 0, name = "Dump"},
    {id = EntityType.ENTITY_SPLURT, variant = 0, name = "Splurt"},
    {id = EntityType.ENTITY_STRIDER, variant = 0, name = "Strider"},
    {id = EntityType.ENTITY_WRAITH, variant = 0, name = "Wraith"},
    {id = EntityType.ENTITY_WILLO, variant = 0, name = "Willo"},
    {id = EntityType.ENTITY_VIS_FATTY, variant = 0, name = "Vis Fatty"},
    {id = EntityType.ENTITY_BISHOP, variant = 0, name = "Bishop"},
    {id = EntityType.ENTITY_QUAKE_GRIMACE, variant = 0, name = "Quake Grimace"},
    {id = EntityType.ENTITY_FACELESS, variant = 0, name = "Faceless"},
    {id = EntityType.ENTITY_EVIS, variant = 0, name = "Evis"},
    {id = EntityType.ENTITY_MOTHERS_SHADOW, variant = 0, name = "Mother's Shadow"},
    {id = EntityType.ENTITY_MOCKULUS, variant = 0, name = "Mockulus"},
    {id = EntityType.ENTITY_GRUDGE, variant = 0, name = "Grudge"},
    {id = EntityType.ENTITY_BLOATY, variant = 0, name = "Bloaty"},
    {id = EntityType.ENTITY_SHADY, variant = 0, name = "Shady"},
    {id = EntityType.ENTITY_WHIPPER, variant = 0, name = "Whipper"},
    {id = EntityType.ENTITY_CANDLER, variant = 0, name = "Candler"},
    {id = EntityType.ENTITY_DANNY, variant = 0, name = "Danny"},
    {id = EntityType.ENTITY_VIS_VERSA, variant = 0, name = "Vis Versa"},
    {id = EntityType.ENTITY_CLICKETY_CLACK, variant = 0, name = "Clickety Clack"},
    {id = EntityType.ENTITY_BONE_KNIGHT, variant = 0, name = "Bone Knight"},
    {id = EntityType.ENTITY_CYCLOPIA, variant = 0, name = "Cyclopia"},
    {id = EntityType.ENTITY_RED_GHOST, variant = 0, name = "Red Ghost"},
    {id = EntityType.ENTITY_HENRY, variant = 0, name = "Henry"},
    {id = EntityType.ENTITY_GUTTED_FATTY, variant = 0, name = "Gutted Fatty"},
    {id = EntityType.ENTITY_FLOATING_KNIGHT, variant = 0, name = "Floating Knight"},
    {id = EntityType.ENTITY_FLOATING_HOST, variant = 0, name = "Floating Host"},
    {id = EntityType.ENTITY_PUSTULE, variant = 0, name = "Pustule"},
    {id = EntityType.ENTITY_CYST, variant = 0, name = "Cyst"},
    {id = EntityType.ENTITY_FLESH_MAIDEN, variant = 0, name = "Flesh Maiden"},
    {id = EntityType.ENTITY_ARMYFLY, variant = 0, name = "Army Fly"},
    {id = EntityType.ENTITY_FLY_TRAP, variant = 0, name = "Fly Trap"},
    {id = EntityType.ENTITY_TICKING_SPIDER, variant = 0, name = "Ticking Spider"},
    {id = EntityType.ENTITY_BLACK_MAW, variant = 0, name = "Black Maw"},
    {id = EntityType.ENTITY_BLOOD_PUPPY, variant = 0, name = "Blood Puppy"},
    {id = EntityType.ENTITY_PEEPER_FATTY, variant = 0, name = "Peeper Fatty"},
    {id = EntityType.ENTITY_COHORT, variant = 0, name = "Cohort"},
    {id = EntityType.ENTITY_FARTIGAN, variant = 0, name = "Fartigan"},
    {id = EntityType.ENTITY_FIRE_WORM, variant = 0, name = "Fire Worm"},
    {id = EntityType.ENTITY_QUAKEY, variant = 0, name = "Quakey"},
    {id = EntityType.ENTITY_GYRO, variant = 0, name = "Gyro"},
    {id = EntityType.ENTITY_BOUNCER, variant = 0, name = "Bouncer"},
    {id = EntityType.ENTITY_BLURB, variant = 0, name = "Blurb"},
    {id = EntityType.ENTITY_FISSURE, variant = 0, name = "Fissure"},
    {id = EntityType.ENTITY_POLTY, variant = 0, name = "Polty"},
    {id = EntityType.ENTITY_PREY, variant = 0, name = "Prey"},
    {id = EntityType.ENTITY_ROCK_SPIDER, variant = 0, name = "Rock Spider"},
    {id = EntityType.ENTITY_FLY_BOMB, variant = 0, name = "Fly Bomb"},
    {id = EntityType.ENTITY_BOMBGAGGER, variant = 0, name = "Bombgagger"},
    {id = EntityType.ENTITY_MOLE, variant = 0, name = "Mole"},
    {id = EntityType.ENTITY_BONY, variant = 0, name = "Bony"},
    {id = EntityType.ENTITY_BLACK_BONY, variant = 0, name = "Black Bony"},
    {id = EntityType.ENTITY_BLACK_GLOBIN, variant = 0, name = "Black Globin"},
    {id = EntityType.ENTITY_BLACK_GLOBIN_HEAD, variant = 0, name = "Black Globin Head"},
    {id = EntityType.ENTITY_BLACK_GLOBIN_BODY, variant = 0, name = "Black Globin Body"},
    {id = EntityType.ENTITY_HOMUNCULUS, variant = 0, name = "Homunculus"},
    {id = EntityType.ENTITY_TUMOR, variant = 0, name = "Tumor"},
    {id = EntityType.ENTITY_MRMAW, variant = 0, name = "Mr. Maw"},
    {id = EntityType.ENTITY_BRAIN, variant = 0, name = "Brain"},
    {id = EntityType.ENTITY_MEMBRAIN, variant = 0, name = "Membrain"},
    {id = EntityType.ENTITY_SKINNY, variant = 0, name = "Skinny"},
    {id = EntityType.ENTITY_GAPING_MAW, variant = 0, name = "Gaping Maw"},
    {id = EntityType.ENTITY_BROKEN_GAPING_MAW, variant = 0, name = "Broken Gaping Maw"},
    {id = EntityType.ENTITY_DART_FLY, variant = 0, name = "Dart Fly"},
    {id = EntityType.ENTITY_CONJOINED_SPITTY, variant = 0, name = "Conjoined Spitty"},
    {id = EntityType.ENTITY_CONJOINED_FATTY, variant = 0, name = "Conjoined Fatty"},
    {id = EntityType.ENTITY_FAT_BAT, variant = 0, name = "Fat Bat"},
    {id = EntityType.ENTITY_IMP, variant = 0, name = "Imp"},
    {id = EntityType.ENTITY_GURGLE, variant = 0, name = "Gurgle"},
    {id = EntityType.ENTITY_BUTTLICKER, variant = 0, name = "Buttlicker"},
    {id = EntityType.ENTITY_HANGER, variant = 0, name = "Hanger"},
    {id = EntityType.ENTITY_SWARMER, variant = 0, name = "Swarmer"},
    {id = EntityType.ENTITY_BIGSPIDER, variant = 0, name = "Big Spider"},
    {id = EntityType.ENTITY_ETERNALFLY, variant = 0, name = "Eternal Fly"},
    {id = EntityType.ENTITY_BEGOTTEN, variant = 0, name = "Begotten"},
    {id = EntityType.ENTITY_BABY_BEGOTTEN, variant = 0, name = "Baby Begotten"},
    {id = EntityType.ENTITY_SWARM_SPIDER, variant = 0, name = "Swarm Spider"},
    {id = EntityType.ENTITY_DUST, variant = 0, name = "Dust"},
    {id = EntityType.ENTITY_DUSTY_DEATHS_HEAD, variant = 0, name = "Dusty Death's Head"},
    {id = EntityType.ENTITY_NULLS, variant = 0, name = "Nulls"},
    {id = EntityType.ENTITY_NIGHT_CRAWLER, variant = 0, name = "Night Crawler"},
    {id = EntityType.ENTITY_SUB_HORF, variant = 0, name = "Sub Horf"},
    {id = EntityType.ENTITY_SPLASHER, variant = 0, name = "Splasher"},
    {id = EntityType.ENTITY_GRUB, variant = 0, name = "Grub"},
    {id = EntityType.ENTITY_WALL_CREEP, variant = 0, name = "Wall Creep"},
    {id = EntityType.ENTITY_RAGE_CREEP, variant = 0, name = "Rage Creep"},
    {id = EntityType.ENTITY_BLIND_CREEP, variant = 0, name = "Blind Creep"},
    {id = EntityType.ENTITY_ROUND_WORM, variant = 0, name = "Round Worm"},
    {id = EntityType.ENTITY_POOP, variant = 0, name = "Poop"},
    {id = EntityType.ENTITY_RAGLING, variant = 0, name = "Ragling"},
    {id = EntityType.ENTITY_FLESH_MOBILE_HOST, variant = 0, name = "Flesh Mobile Host"},
    {id = EntityType.ENTITY_PSY_HORF, variant = 0, name = "Psy Horf"},
    {id = EntityType.ENTITY_FULL_FLY, variant = 0, name = "Full Fly"},
    {id = EntityType.ENTITY_ONE_TOOTH, variant = 0, name = "One Tooth"},
    {id = EntityType.ENTITY_SKINBALL, variant = 0, name = "Skinball"},
    {id = EntityType.ENTITY_NERVE_ENDING, variant = 0, name = "Nerve Ending"},
    {id = EntityType.ENTITY_CAMILLO_JR, variant = 0, name = "Camillo Jr"},
    {id = EntityType.ENTITY_SUCKER, variant = 0, name = "Sucker"},
    {id = EntityType.ENTITY_EYE, variant = 0, name = "Eye"},
    {id = EntityType.ENTITY_LUMP, variant = 0, name = "Lump"},
    {id = EntityType.ENTITY_LEECH, variant = 0, name = "Leech"},
    {id = EntityType.ENTITY_FLAMINGHOPPER, variant = 0, name = "Flaming Hopper"},
    {id = EntityType.ENTITY_PARA_BITE, variant = 0, name = "Para-Bite"},
    {id = EntityType.ENTITY_FRED, variant = 0, name = "Fred"},
    {id = EntityType.ENTITY_SLOTH, variant = 0, name = "Sloth"},
    {id = EntityType.ENTITY_LUST, variant = 0, name = "Lust"},
    {id = EntityType.ENTITY_WRATH, variant = 0, name = "Wrath"},
    {id = EntityType.ENTITY_GLUTTONY, variant = 0, name = "Gluttony"},
    {id = EntityType.ENTITY_GREED, variant = 0, name = "Greed"},
    {id = EntityType.ENTITY_ENVY, variant = 0, name = "Envy"},
    {id = EntityType.ENTITY_PRIDE, variant = 0, name = "Pride"},
    {id = EntityType.ENTITY_DOPLE, variant = 0, name = "Dople"},
    {id = EntityType.ENTITY_MAGGOT, variant = 0, name = "Maggot"},
    {id = EntityType.ENTITY_HIVE, variant = 0, name = "Hive"},
    {id = EntityType.ENTITY_CHARGER, variant = 0, name = "Charger"},
    {id = EntityType.ENTITY_GLOBIN, variant = 0, name = "Globin"},
    {id = EntityType.ENTITY_BOIL, variant = 0, name = "Boil"},
    {id = EntityType.ENTITY_SPITTY, variant = 0, name = "Spitty"},
    {id = EntityType.ENTITY_GUTS, variant = 0, name = "Guts"},
    {id = EntityType.ENTITY_KNIGHT, variant = 0, name = "Knight"},
    {id = EntityType.ENTITY_STONEHEAD, variant = 0, name = "Stone Head"},
    {id = EntityType.ENTITY_POKY, variant = 0, name = "Poky"},
    {id = EntityType.ENTITY_MOM, variant = 0, name = "Mom"},
    {id = EntityType.ENTITY_MOMS_HAND, variant = 0, name = "Mom's Hand"},
    {id = EntityType.ENTITY_MOM_HEAD, variant = 0, name = "Mom's Head"},
    {id = EntityType.ENTITY_HEART, variant = 0, name = "Heart"},
    {id = EntityType.ENTITY_MASK, variant = 0, name = "Mask"},
    {id = EntityType.ENTITY_MASK_OF_INFAMY, variant = 0, name = "Mask of Infamy"},
    {id = EntityType.ENTITY_HEART_OF_INFAMY, variant = 0, name = "Heart of Infamy"},
    {id = EntityType.ENTITY_GEMINI, variant = 0, name = "Gemini"},
    {id = EntityType.ENTITY_FAT_SACK, variant = 0, name = "Fat Sack"},
    {id = EntityType.ENTITY_HALF_SACK, variant = 0, name = "Half Sack"},
    {id = EntityType.ENTITY_DEATHS_HEAD, variant = 0, name = "Death's Head"},
    {id = EntityType.ENTITY_BABY_LONG_LEGS, variant = 0, name = "Baby Long Legs"},
    {id = EntityType.ENTITY_CRAZY_LONG_LEGS, variant = 0, name = "Crazy Long Legs"},
    {id = EntityType.ENTITY_NEST, variant = 0, name = "Nest"},
    {id = EntityType.ENTITY_BABY, variant = 0, name = "Baby"},
    {id = EntityType.ENTITY_VIS, variant = 0, name = "Vis"},
    {id = EntityType.ENTITY_BABY_PLUM, variant = 0, name = "Baby Plum"},
    {id = EntityType.ENTITY_STONE_EYE, variant = 0, name = "Stone Eye"},
    {id = EntityType.ENTITY_CONSTANT_STONE_SHOOTER, variant = 0, name = "Constant Stone Shooter"},
    {id = EntityType.ENTITY_BRIMSTONE_HEAD, variant = 0, name = "Brimstone Head"},
    {id = EntityType.ENTITY_MOBILE_HOST, variant = 0, name = "Mobile Host"},
    {id = EntityType.ENTITY_KEEPER, variant = 0, name = "Keeper"},
    {id = EntityType.ENTITY_VISAGE, variant = 0, name = "Visage"},
    {id = EntityType.ENTITY_ULTRA_COIN, variant = 0, name = "Ultra Coin"},
    {id = EntityType.ENTITY_ULTRA_DOOR, variant = 0, name = "Ultra Door"},
    {id = EntityType.ENTITY_ULTRA_GREED, variant = 0, name = "Ultra Greed"},
    {id = EntityType.ENTITY_ULTRA_PRIDE, variant = 0, name = "Ultra Pride"},
    {id = EntityType.ENTITY_MOMS_DEAD_HAND, variant = 0, name = "Mom's Dead Hand"},
    {id = EntityType.ENTITY_MR_MINE, variant = 0, name = "Mr. Mine"},
    {id = EntityType.ENTITY_CORN_MINE, variant = 0, name = "Corn Mine"},
    {id = EntityType.ENTITY_POISON_MIND, variant = 0, name = "Poison Mind"},
    {id = EntityType.ENTITY_STONEY, variant = 0, name = "Stoney"},
    {id = EntityType.ENTITY_BLISTER, variant = 0, name = "Blister"},
    {id = EntityType.ENTITY_THE_THING, variant = 0, name = "The Thing"},
    {id = EntityType.ENTITY_TARBOY, variant = 0, name = "Tarboy"},
    {id = EntityType.ENTITY_GUSH, variant = 0, name = "Gush"},
    {id = EntityType.ENTITY_LEPER, variant = 0, name = "Leper"},
    {id = EntityType.ENTITY_PROP, variant = 0, name = "Generic Prop"},
    {id = EntityType.ENTITY_TRIGGER_OUTPUT, variant = 0, name = "Trigger Output"},
    {id = EntityType.ENTITY_ENVIRONMENT, variant = 0, name = "Environment"},
    {id = EntityType.ENTITY_HORNFEL, variant = 0, name = "Hornfel"},
    {id = EntityType.ENTITY_HORNFEL_DOOR, variant = 0, name = "Hornfel Door"},
    {id = EntityType.ENTITY_SIREN_HELPER, variant = 0, name = "Siren Helper"},
    {id = EntityType.ENTITY_MINECART, variant = 0, name = "Minecart"},
    {id = EntityType.ENTITY_FROZEN_ENEMY, variant = 0, name = "Frozen Enemy"},
    {id = EntityType.ENTITY_WIZOOB, variant = 0, name = "Wizoob"},
    {id = EntityType.ENTITY_SQUIRT, variant = 0, name = "Squirt"},
    {id = EntityType.ENTITY_COD_WORM, variant = 0, name = "Cod Worm"},
    {id = EntityType.ENTITY_RING_OF_FLIES, variant = 0, name = "Ring of Flies"},
    {id = EntityType.ENTITY_DINGA, variant = 0, name = "Dinga"},
    {id = EntityType.ENTITY_OOB, variant = 0, name = "OOB"},
    {id = EntityType.ENTITY_SKINBALL, variant = 0, name = "Skinball"},
    {id = EntityType.ENTITY_GAPING_MAW, variant = 0, name = "Gaping Maw"},
    {id = EntityType.ENTITY_FIREPLACE, variant = 0, name = "Fireplace"},
    {id = EntityType.ENTITY_VIS, variant = 0, name = "Vıs"},
}

local function canPressKey(key)
    local frame = Game():GetFrameCount()
    return (lastPressedTime[key] == nil or frame - lastPressedTime[key] > cooldown)
end

local function setKeyCooldown(key)
    lastPressedTime[key] = Game():GetFrameCount()
end

function mod:RenderMobMenu()
    if not mobMenuVisible then return end

    local lang = langText[currentLang]

    local baseX = 60
    local baseY = 60
    local perPage = 9
    local rowSpacing = 20
    local colSpacing = 160
    local start = mobPage * perPage + 1

    for i = 0, perPage - 1 do
        local idx = start + i
        local enemy = enemies[idx]
        local col = i % 3
        local row = math.floor(i / 3)
        local x = baseX + col * colSpacing
        local y = baseY + row * rowSpacing
        local sel = (i + 1 == mobSelected)
        local r, g, b = sel and 1 or 0.8, sel and 0 or 0.8, sel and 0 or 0.8

        local name = enemy and enemy.name or "---"
        Isaac.RenderText((sel and "> " or "  ") .. name, x, y, r, g, b, 1)
    end

    local totalPages = math.ceil(#enemies / perPage)
    Isaac.RenderText(lang.pageText .. ": " .. (mobPage + 1) .. "/" .. totalPages, baseX, baseY + 110, 1, 1, 1, 1)
    Isaac.RenderText(lang.nextPage, baseX + 240, baseY + 140, 1, 1, 0, 1)
    Isaac.RenderText(lang.prevPage, baseX + 240, baseY + 160, 1, 1, 0, 1)
    Isaac.RenderText(lang.langInfo, baseX, baseY + 140, 1, 1, 1, 1)
    Isaac.RenderText(lang.spawn, baseX, baseY + 160, 1, 1, 0, 1)
    Isaac.RenderText(lang.madeBy, baseX + 220, baseY + 175, 1, 1, 1, 1)
end

function mod:UpdateMobMenuInput()
    local player = Isaac.GetPlayer(0)
    if not player or player:IsDead() then return end

    local perPage = 9
    local maxPage = math.floor((#enemies - 1) / perPage)

    -- Menü açma / kapama
    if Input.IsButtonPressed(Keyboard.KEY_8, 0) and canPressKey(Keyboard.KEY_8) then
        mobMenuVisible = not mobMenuVisible
        setKeyCooldown(Keyboard.KEY_8)
    end
    if Input.IsButtonPressed(Keyboard.KEY_9, 0) and canPressKey(Keyboard.KEY_9) then
        mobMenuVisible = false
        setKeyCooldown(Keyboard.KEY_9)
    end
    if Input.IsButtonPressed(Keyboard.KEY_0, 0) and canPressKey(Keyboard.KEY_0) then
        mobMenuVisible = false
        setKeyCooldown(Keyboard.KEY_0)
    end
    if not mobMenuVisible then return end

    -- Yön tuşları
    if Input.IsButtonPressed(Keyboard.KEY_DOWN, 0) and canPressKey(Keyboard.KEY_DOWN) then
        if mobSelected + 3 <= perPage then mobSelected = mobSelected + 3 end
        setKeyCooldown(Keyboard.KEY_DOWN)
    elseif Input.IsButtonPressed(Keyboard.KEY_UP, 0) and canPressKey(Keyboard.KEY_UP) then
        if mobSelected - 3 >= 1 then mobSelected = mobSelected - 3 end
        setKeyCooldown(Keyboard.KEY_UP)
    elseif Input.IsButtonPressed(Keyboard.KEY_LEFT, 0) and canPressKey(Keyboard.KEY_LEFT) then
        if mobSelected > 1 then mobSelected = mobSelected - 1 end
        setKeyCooldown(Keyboard.KEY_LEFT)
    elseif Input.IsButtonPressed(Keyboard.KEY_RIGHT, 0) and canPressKey(Keyboard.KEY_RIGHT) then
        if mobSelected < perPage and (mobPage * perPage + mobSelected + 1 <= #enemies) then
            mobSelected = mobSelected + 1
        end
        setKeyCooldown(Keyboard.KEY_RIGHT)
    elseif Input.IsButtonPressed(Keyboard.KEY_X, 0) and canPressKey(Keyboard.KEY_X) then
        if mobPage < maxPage then
            mobPage = mobPage + 1
            mobSelected = 1
        end
        setKeyCooldown(Keyboard.KEY_X)
    elseif Input.IsButtonPressed(Keyboard.KEY_Z, 0) and canPressKey(Keyboard.KEY_Z) then
        if mobPage > 0 then
            mobPage = mobPage - 1
            mobSelected = 1
        end
        setKeyCooldown(Keyboard.KEY_Z)
    elseif Input.IsButtonPressed(Keyboard.KEY_V, 0) and canPressKey(Keyboard.KEY_V) then
        local idx = mobPage * perPage + mobSelected
        local enemy = enemies[idx]
        if enemy then
            Isaac.Spawn(enemy.id, enemy.variant, 0, player.Position, Vector(0, 0), nil)
        end
        setKeyCooldown(Keyboard.KEY_V)
    elseif Input.IsButtonPressed(Keyboard.KEY_N, 0) and canPressKey(Keyboard.KEY_N) then
        currentLang = "en"
        setKeyCooldown(Keyboard.KEY_N)
    elseif Input.IsButtonPressed(Keyboard.KEY_B, 0) and canPressKey(Keyboard.KEY_B) then
        currentLang = "tr"
        setKeyCooldown(Keyboard.KEY_B)
    end
end

mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, function(_, isContinued)
    mobMenuVisible = false
    mobPage = 0
    mobSelected = 1
    lastPressedTime = {}
end)

mod:AddCallback(ModCallbacks.MC_POST_RENDER, mod.RenderMobMenu)
mod:AddCallback(ModCallbacks.MC_POST_UPDATE, mod.UpdateMobMenuInput)



-- Kreasy Tarafından Düzenlenmiştir
local MyMod = RegisterMod("SimpleHeartContainerControl", 1)

local cooldown = 0.43
local lastPressAdd = 0
local lastPressRemove = 0

function MyMod:onUpdate()
    local player = Isaac.GetPlayer(0)
    local currentTime = Isaac.GetFrameCount() / 30

    -- 1 tuşuna basıldığında (Kalp konteyneri ekleme)
    if Input.IsButtonPressed(Keyboard.KEY_1, player.ControllerIndex) then
        if currentTime - lastPressAdd >= cooldown then
            player:AddMaxHearts(2, false) -- 1 tam kalp konteyneri (2 yarım kalp)
            lastPressAdd = currentTime
        end
    end

    -- 2 tuşuna basıldığında (Kalp konteyneri silme)
    if Input.IsButtonPressed(Keyboard.KEY_2, player.ControllerIndex) then
        if currentTime - lastPressRemove >= cooldown then
            local maxHearts = player:GetMaxHearts()
            if maxHearts > 2 then
                player:AddMaxHearts(-2, false)
            else
                print("Kalp konteynerleri daha fazla azaltılamaz.")
            end
            lastPressRemove = currentTime
        end
    end
end

MyMod:AddCallback(ModCallbacks.MC_POST_UPDATE, MyMod.onUpdate)
