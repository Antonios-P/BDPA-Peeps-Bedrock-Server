import cn.nukkit.Player;

//there should not be any package name.
public class Template{
    //this method should return a String given these two parameters.
    //remember that this method should be fast because it is called everytime someone post a message.
    public static String format(Player p){
        return p.getLevel().getName();
    }


    //returns the name of this formatter, this should not change and shoule be unique.
    public static String getName(){
        return "my format";
    }
}