import java.util.HashMap;

public class CustomerHash
{
    //hashmap to store customers with String as a key
    private HashMap<String, Customer> customerHashMap;

    //constructor initializes hashmap
    public CustomerHash()
    {
        customerHashMap = new HashMap<>();
    }

    //@param customer, customer object to be added to hashmap
    public void setCustomer(Customer customer)
    {
        customerHashMap.put(customer.getPhoneNumber(),customer);
    }

    //@param String, phone number string to be used as key
    //@return String, returns toString of customer object
    public String getCustomer(String phoneNum)
    {
        if (customerHashMap.containsKey(phoneNum))
        {
            return customerHashMap.get(phoneNum).toString();
        }
        else
            return "No Location Found.";
    }

    //@param String, phone number string to be used as key
    //@return boolean, true or false if customer exists in hashmap
    public boolean checkIfCustomerExist(String phoneNum)
    {
        if (customerHashMap.containsKey(phoneNum))
        {
            return true;
        }
        else
            return false;
    }

    //@param String, phone number string to be used as key
    public void removeCustomer(String phoneNum)
    {
        //removes value associated with key
        customerHashMap.remove(phoneNum);
    }
}
