public class Estimate
{

    //attributes for estimate
    private String phoneNumber;
    private String name;
    private String address;
    private String estDesc;
    private double estPrice;

    //constructor method for estimate objects
    public Estimate(String nameIn, String phoneIn, String addressIn, String estDescIn, double estPriceIn)
    {
        phoneNumber = phoneIn;
        name = nameIn;
        address = addressIn;
        estDesc = estDescIn;
        estPrice = estPriceIn;
    }

    //@return String, Estimate phone number
    public String getPhoneNumber()
    {
        return phoneNumber;
    }

    public String toString()
    {
        String output;

        output="\n++++++++++++";
        output+="\nName: "+name;
        output+="\nAddress: "+address;
        output+="\nPhone No: "+phoneNumber;
        output+="\nEst. Price: "+estPrice;
        output+="\nDesc.: "+estDesc;
        output+="\n++++++++++++";

        return output;
    }

}
