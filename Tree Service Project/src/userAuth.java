public class userAuth
{
    //values to store database credentials
    private String url;
    private String userName;
    private String password;

    //No Arg Constructor sets all credential equal to their value
    public userAuth()
    {
        url = "jdbc:mysql://localhost:3306/finalproject";
        userName="root";
        password="passw0rd";
    }

    //@return String, user name
    public String getUserName()
    {
        return userName;
    }

    //@return String, password
    public String getPassword()
    {
        return password;
    }

    //@return String, url to database
    public String getUrl()
    {
        return url;
    }
}
