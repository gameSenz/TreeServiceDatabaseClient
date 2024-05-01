public class Customer
{

    //attributes for customers
    private String name;
    private String phoneNum;
    private String address;
    private int numOfEstimates;

    //Constructor initializes customer object
    public Customer(String nameIn, String phoneNumIn, String addressIn, int numOfEstimatesIn)
    {
        name = nameIn;
        phoneNum = phoneNumIn;
        address = addressIn;
        numOfEstimates = numOfEstimatesIn;
    }

    //@return String, phone number
    public String getPhoneNumber()
    {
        return phoneNum;
    }

    public String toString()
    {
        String output="+++Customer+++";
        output+="\nName: "+name;
        output+="\nPhone No.: "+phoneNum;
        output+="\nAddress: "+address;

        if (numOfEstimates!=0)
            output+="\n"+numOfEstimates+" asscoiated estimates.";

        output+="\n+++++++++++";

        return output;
    }

}
