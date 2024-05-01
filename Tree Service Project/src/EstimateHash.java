import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class EstimateHash
{
    //creates hashmap with String key, and List of Estimates as value
    private HashMap<String, List<Estimate>> estimateHash;

    //constructor to initialize hashmap
    public EstimateHash()
    {
        estimateHash = new HashMap<>();
    }

    //@param Estimate, estimate object
    public void setEstimate(Estimate estimate)
    {
        //grabs phone number string value from estimate object
        String phoneNum = estimate.getPhoneNumber();

        //checks if List estimateList is equal to List referenced via phone number string as key
        List<Estimate> estimateList = estimateHash.get(phoneNum);

        //checks if list with phone number key doesn't exist
        if (estimateList == null)
        {
            //creates a new ArrayList and attaches it to hashmap
            //uses user input phone number from before and adds List value to said key
            estimateList = new ArrayList<>();
            estimateHash.put(phoneNum, estimateList);
        }
        //adds Estimate object to estimate list
        estimateList.add(estimate);
    }

    //@param String, phone number string to be used as key
    //@return String, returns toString of all estimate objects in list with [] formatted out
    public String printEstimate(String phoneNum)
    {
        //if hash has key references
        if (estimateHash.containsKey(phoneNum))
        {
            return estimateHash.get(phoneNum).toString().replace("[", "").replace("]", "");
        }
        else
            return "No Estimates Found.";
    }

    //@param String, phone number string to be used as key
    //@return List<Estimate>, returns a reference to list associated with key
    public List<Estimate> getEstimateList(String phoneNum)
    {
        return estimateHash.getOrDefault(phoneNum, null);
    }
}
