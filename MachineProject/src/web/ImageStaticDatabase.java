package web;

import java.util.*;

public class ImageStaticDatabase {
	public static ArrayList<Image> images = new ArrayList<Image>();
	public static ImageStaticDatabase ImageStaticDatabase = new ImageStaticDatabase();
	public static String arrayTag2[] = {"plswork", "ded"};
	public static String arrayTag1[] = {"test", "ok"};
	
	//Constructor
	private ImageStaticDatabase(){
		//cat
		images.add(new Image(false, 1, "http://imgur.com/UtebJ7x.jpg", "http://imgur.com/UHIoyIZ.jpg" ,"Cat" , "Meow", "stephen", arrayTag1, new String[]{"tan"}));
		//Fallout
		images.add(new Image(false, 2, "http://imgur.com/5Mr2bs9.jpg", "http://imgur.com/VVgTazs.jpg", "Fallout", "Wow", "stephen", arrayTag1, new String[]{"tan"}));
		//house
		images.add(new Image(false, 3, "http://imgur.com/XhPttdc.jpg", "http://imgur.com/uE6IejB.jpg", "House", "I wanna live here", "stephen", arrayTag1, new String[]{"tan"}));
		//trump
		images.add(new Image(false,4, "http://imgur.com/XQrzkP8.jpg", "http://imgur.com/9ICLWHr.jpg", "Trump", "Trump for pres", "stephen", arrayTag1, new String[]{"webapde"}));
		//carrotman
		images.add(new Image(false,5, "http://imgur.com/jkmIFqX.jpg", "http://imgur.com/bzYA4IE.jpg", "Carrotman", "Carrotmeyn", "stephen", arrayTag1, new String[]{"webapde"}));
		//dice
		images.add(new Image(false, 6, "http://imgur.com/ZjudPJ9.jpg", "http://imgur.com/SYStiNo.jpg", "dice", "roll le dice", "tan", arrayTag1, new String[]{"webapde"}));
		//troll
		images.add(new Image(false, 7, "http://imgur.com/smjf4qn.jpg", "http://imgur.com/S7nsFki.jpg", "troll", "troll-ing", "tan", arrayTag1, new String[]{"webapde"}));
		//dinocj
		images.add(new Image(false,8, "http://imgur.com/Qh6QWfD.jpg", "http://imgur.com/hlOMN88.jpg", "dinocj", "Rawr", "tan",arrayTag1, new String[]{"stephen"}));
		//einstein
		images.add(new Image(true,9, "http://imgur.com/9Xlioqi.jpg", "http://imgur.com/aYzc8Oe.jpg", "einstein", "IQ = einstein", "tan", arrayTag1, new String[]{"webapde"}));
		//bannaa
		images.add(new Image(true,10, "http://imgur.com/icUhr0s.jpg", "http://imgur.com/QSsMH5A.jpg", "banana", "Bananananaana", "tan",arrayTag2, new String[]{"stephen"}));
		//pony
		images.add(new Image(true, 11, "http://imgur.com/SUtzb9A.jpg", "http://imgur.com/2q94Kxp.jpg", "pony", "I love poniez", "webapde", arrayTag2, new String[]{"stephen"}));
		//orangpus
		images.add(new Image(true, 12, "http://imgur.com/b8JVzoN.jpg", "http://imgur.com/kGSivmk.jpg", "orange", "Orange Octopuz", "webapde", arrayTag2, new String[]{"stephen"}));
		//rain
		images.add(new Image(true,13, "http://imgur.com/k6JsOPt.jpg", "http://imgur.com/P2jNN5Z.jpg", "rain", "Suspended", "webapde", arrayTag2, new String[]{"stephen"}));
		//random patterns
		images.add(new Image(true,14, "http://imgur.com/j9K5ewc.jpg", "http://imgur.com/3hCLWzu.jpg", "random", "Confused", "webapde", arrayTag2, new String[]{"tan"}));
		//goku
		images.add(new Image(true,15, "http://imgur.com/MHrIGco.jpg", "http://imgur.com/4UsaSOC.jpg", "goku", "KAKAROT", "webapde", arrayTag2, new String[]{"tan"}));
	}
	
	public static ImageStaticDatabase getInstance(){
		return ImageStaticDatabase;
	}
}
