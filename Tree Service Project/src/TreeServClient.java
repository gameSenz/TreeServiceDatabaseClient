import java.sql.*;
import java.util.InputMismatchException;
import java.util.Scanner;

/*
locationID varchar(5) primary key,
    strAddress varchar(50) not null,
    city varchar(50) not null,
    zip char(5) not null,
    distanceMiles decimal not null,
    permitReq boolean not null
* */
public class TreeServClient
{
    //@return int, returns user's desired menu selection choice
    public static int mainMenu()
    {
        Scanner kb = new Scanner(System.in);
        int userInput;

        //main menu text
        String output = "\n-----------------------------------";
        output+="\n+++White Birch Tree System+++";
        output+="\nEnter number to select operation:";
        output+="\n1. Add new customer";
        output+="\n2. Delete a customer";
        output+="\n3. View a customer's data";
        output+="\n4. View an estimate";
        output+="\n5. Exit";
        output+="\n-----------------------------------";

        System.out.println(output);
        try
        {
            userInput = kb.nextInt();
            kb.nextLine();

            if (userInput>5 || userInput<0)
                return 0;
        }
        catch (InputMismatchException e)
        {
            return 0;
        }
        return userInput;
    }

    //@param CustomerHash, holds a hashmap that stores customer objects using customer phone number as key
    //@param EstimateHash, holds a hashmap that holds List of estimates using customer phone number as key
    public static void localizeCustomerData(CustomerHash customerHash, EstimateHash estimateHash)
    {

        userAuth admin = new userAuth();

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");

            //establish connection to mySQL database
            Connection connection = DriverManager.getConnection(admin.getUrl(),admin.getUserName(),admin.getPassword());

            Statement statement = connection.createStatement();

            //query to attain information
            //first and last name is concatenated, phone number, concat address city zip, estimate desc and it's price
            ResultSet resultSet = statement.executeQuery("select concat_ws(' ',firstName,lastName) as Name,phoneNumber, concat_ws(' ',strAddress,city,zip) as Address,\n" +
                    "estimateDesc, estimatePrice\n" +
                    "    from estimatestbl,customertbl,locationtbl\n" +
                    "        where customertbl.customerPhoneNumber = estimatestbl.phoneNumber\n" +
                    "        and customertbl.locationID = locationtbl.locationID");

            //changes the row of query selected until none are left
            while (resultSet.next())
            {
                //collects all attributes into java data types
                String name = resultSet.getString(1);
                String phoneNum = resultSet.getString(2);
                String address = resultSet.getString(3);
                String estimateDesc = resultSet.getString(4);
                double estimatePrice = resultSet.getDouble(5);

                //creates estimate object with previous data. and adds it to estimate hash
                Estimate estimate = new Estimate(name,phoneNum,address,estimateDesc,estimatePrice);
                estimateHash.setEstimate(estimate);
            }

            //executes query with customer attributes from database
            //concat name, phone number , concat address is all collected
            resultSet = statement.executeQuery("select concat_ws(' ',firstName,lastName) as Name,customerPhoneNumber,concat_ws(' ',strAddress,city,zip) as Address\n" +
                    "    from customertbl, locationtbl\n" +
                    "        where customertbl.locationID = locationtbl.locationID");


            while (resultSet.next())
            {
                //attributes are collected and converted for java use
                String name = resultSet.getString(1);
                String phoneNum = resultSet.getString(2);
                String address = resultSet.getString(3);
                int estimateCount = estimateHash.getEstimateList(phoneNum).size();

                //customer object is made with attributes and placed into hash
                Customer customer = new Customer(name,phoneNum,address,estimateCount);
                customerHash.setCustomer(customer);
            }
            //database connection is closed
            connection.close();
        }
        catch (Exception e)
        {
            //prints any sql Exceptions
            System.out.println(e);
        }

    }

    //@param customerhash, holds hashmap with customers
    public static void addCustomer(CustomerHash customerHash)
    {
        userAuth admin = new userAuth();
        Scanner kb = new Scanner(System.in);
        int locationID=0;
        String phoneNum="";

        //establishes connection to sql database
        try {
            Connection connection = DriverManager.getConnection(admin.getUrl(),admin.getUserName(),admin.getPassword());
            String query;
            int rows;

            //collects user input for necessary attributes for database entry
            System.out.print("\nEnter Phone Number: ");
            phoneNum = kb.nextLine();

            System.out.print("Enter Customer First Name: ");
            String firstName = kb.nextLine();

            System.out.print("Enter Customer Last Name: ");
            String lastName = kb.nextLine();

            System.out.print("Enter Street Address: ");
            String strAddress = kb.nextLine();

            System.out.print("Enter City: ");
            String city = kb.nextLine();

            System.out.print("Enter Zip: ");
            String zip = kb.nextLine();

            //user input is put into try catch and while loop for validation
            System.out.print("Enter distance from Andover NJ in miles: ");
            double distanceMiles=0;
            try
            {
                boolean invalidInput = true;
                do {
                    distanceMiles = kb.nextDouble();
                    kb.nextLine();

                    if(distanceMiles>0)
                        invalidInput=false;
                    else
                        System.out.println("Please use a number greater than 0, decimals are encouraged");
                }while (invalidInput);

            }catch (Exception inputMismatchException)
            {
                System.out.println("Please use a number greater than 0, decimals are encouraged");
            }

            //user input is put into try catch and while loop for validation
            System.out.print("\nEnter 0 if NO permit is needed at location or 1 if so");
            int permitReq=0;
            try
            {
                boolean invalidInput = false;
                do {
                    permitReq = kb.nextInt();
                    kb.nextLine();

                    if(permitReq>1 || permitReq<0)
                    {
                        invalidInput = true;
                        System.out.println("Enter 0 if NO permit is needed at location or 1 if a permit is NEEDED");
                    }
                }while (invalidInput);

            }
            catch (Exception inputMismatchException)
            {
                System.out.println("Enter 0 if NO permit is needed at location or 1 if a permit is NEEDED");
            }

            //query to add location data from user to database using placeholder values
            query = "insert into locationtbl(strAddress, city, zip, distanceMiles, permitReq) values(?,?,?,?,?)";
            try
            {
                //prepared statement to fill in all placeholders and to return auto-incremented key
                PreparedStatement myStmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);

                myStmt.setString(1, strAddress);
                myStmt.setString(2, city);
                myStmt.setString(3, zip);
                myStmt.setDouble(4, distanceMiles);
                myStmt.setInt(5, permitReq);

                //executes query in sql and returns a value to rows to check for result
                rows = myStmt.executeUpdate();

                //checks for fail state via rows value
                if (rows != 1)
                {
                    System.out.println("Data Insertion Unsuccessful, returning to main menu...");
                    mainMenu();
                }
                //if successful assigns the locationID auto-generated to a local variable for further use
                else
                {
                    ResultSet genKey = myStmt.getGeneratedKeys();
                    if(genKey.next())
                        locationID = genKey.getInt(1);
                }
            }
            catch (Exception e)
            {
                System.out.println("Catch 1"+e);
            }

            //query to add customer data from user to database using placeholder values
            query = "insert into customertbl (customerPhoneNumber, firstName, lastName, locationID) values(?,?,?,?)";
            try
            {
                //prepared statement to fill in all placeholders and to return auto-incremented key
                PreparedStatement myStmt = connection.prepareStatement(query);

                myStmt.setString(1, phoneNum);
                myStmt.setString(2, firstName);
                myStmt.setString(3, lastName);
                myStmt.setInt(4, locationID);

                //executes query in sql and returns a value to rows to check for result
                rows = myStmt.executeUpdate();

                //checks for fail state via rows value
                if (rows != 1) {
                    System.out.println("Data Insertion Unsuccessful, returning to main menu...");
                    mainMenu();
                } else
                    System.out.println("Customer added successfully!");
            }
            catch (Exception e)
            {
                System.out.println("Catch 2"+e);
            }

            //query to return values generated using user input in sql database
            query = "select concat_ws(' ',firstName,lastName) as Name,customerPhoneNumber,concat_ws(' ',strAddress,city,zip) as Address" +
                    "    from customertbl, locationtbl" +
                    "        where customertbl.locationID = locationtbl.locationID" +
                    "        and customerPhoneNumber like ?";
            try
            {
                //replaces placeholder with the customer phone number entered by user initially
                PreparedStatement myStmt = connection.prepareStatement(query);
                myStmt.setString(1, phoneNum);

                ResultSet rs = myStmt.executeQuery();

                //loops to assign values to variables
                while (rs.next())
                {
                    String nameIn = rs.getString(1);
                    String phoneNumIn = rs.getString(2);
                    String addressIn = rs.getString(3);

                    //assigns variables from query into customer object which is added to hash
                    Customer customer = new Customer(nameIn, phoneNumIn, addressIn, 0);
                    customerHash.setCustomer(customer);
                }
            }
            catch (Exception e)
            {
                System.out.println("Catch 3"+e);
            }
            //closes database connection
            connection.close();
        }
        catch (Exception e)
        {
            System.out.println("Catch 4"+e);
        }

        //prints data created
        System.out.println("The following customer was generated\n"+
                customerHash.getCustomer(phoneNum).toString());
    }

    //@param CustomerHash holds customer objects
    public static void deleteCustomer(CustomerHash customerHash)
    {
        userAuth admin = new userAuth();
        Scanner kb = new Scanner(System.in);

        //user inputs phone number of customer's data to be deleted
        System.out.println("Enter the phone number of the customer's data you wish to delete");
        String phoneNum = kb.nextLine();

        try
        {
            //establishes connection
            Connection connection = DriverManager.getConnection(admin.getUrl(),admin.getUserName(),admin.getPassword());

            //array of separate queries to delete customer data from customer tbl and all it's dependencies using placeholder
            String[] queries =
            {
                "delete from vehiclesinestimatetbl where estimateID=ANY (select estimateID from estimatestbl where phoneNumber like ?)",
                "delete from equipmentinestimatetbl where estimateID=ANY (select estimateID from estimatestbl where phoneNumber like ?)",
                "update jobstbl set estimateID = null where estimateID=ANY (select estimateID from estimatestbl where phoneNumber like ?)",
                "delete from estimatestbl where phoneNumber like ?",
                "delete from customertbl where customerPhoneNumber = ?"
            };

            try
            {
                int rows=0;

                //iterates throughout query array using the user's input to fill placeholder for deletions
                for(String query : queries)
                {
                    PreparedStatement myStmt = connection.prepareStatement(query);

                    myStmt.setString(1, phoneNum);

                    rows = myStmt.executeUpdate();
                }

                //checks value of rows for fail state
                if (rows != 1) {
                    System.out.println("Data Deletion Unsuccessful, returning to main menu...");
                } else
                    System.out.println("The following customer was deleted\n");
            }
            catch (Exception e)
            {
                System.out.println("Catch 2"+e);
            }

        }
        catch (Exception e)
        {
            System.out.println("Catch 1"+e);
        }

        //
        if (customerHash.checkIfCustomerExist(phoneNum))
        {
            //prints customer deleted and removes them locally via hashmap method
            System.out.println(customerHash.getCustomer(phoneNum));
            customerHash.removeCustomer(phoneNum);
        }
    }

    //@param CustomerHash holds customer objects
    public static void viewCustomer(CustomerHash customerHash)
    {
        Scanner kb = new Scanner(System.in);
        
        //user inputs phone number of customer to view record
        System.out.println("Enter the phone number of the client you'd like to view");
        String phoneNum = kb.nextLine();
        
        //checks if the user input is a corresponding key
        if (customerHash.checkIfCustomerExist(phoneNum))
        {
            System.out.println(customerHash.getCustomer(phoneNum));
        }
        else
            System.out.println("The number entered is not associated with any customers");
    }

    //@param EstimateHash holds Estimate objects via a List
    public static void viewEstimate(EstimateHash estimateHash)
    {
        Scanner kb = new Scanner(System.in);

        System.out.println("Enter the phone number of the client you'd like to view");
        String phoneNum = kb.nextLine();

        //prints list of estimates associated with customer phone number
        System.out.println(estimateHash.printEstimate(phoneNum));
    }

    public static void main(String[] args)
    {
        Scanner kb = new Scanner(System.in);
        boolean powerButton = true;

        //hashmaps to store customer and estimate data locally for rapid access
        //as well as user readability
        CustomerHash customerHash = new CustomerHash();
        EstimateHash estimateHash = new EstimateHash();

        //asks user to enter a password to access program
        System.out.println("Enter password: ");
        if(kb.nextLine().equalsIgnoreCase("password"))
            System.out.println("Welcome to the White Birch Tree Service Data System\n");
        else
        {
            //fail state exits program
            System.out.println("Incorrect Password: Goodbye!");
            System.exit(1);
        }

        //function to populate hashmaps with data from database
        localizeCustomerData(customerHash,estimateHash);

        //do-while to hold menu system
        do
        {
            //switch statement to select functions based on user input
            switch (mainMenu())
            {
                case 0:
                    System.out.println("Please enter a choice from 1-5");
                    break;
                case 1:
                    //allows user to create a customer's data
                    addCustomer(customerHash);
                    break;
                case 2:
                    //allows user to delete a customer's data
                    deleteCustomer(customerHash);
                    break;
                case 3:
                    //allows user to view a customer's data
                    viewCustomer(customerHash);
                    break;
                case 4:
                    //allows user to view a customer's estimate data
                    viewEstimate(estimateHash);
                    break;
                case 5:
                    //ends loop thus terminating program
                    System.out.println("Goodbye!");
                    powerButton=false;
                    break;
            }
        }
        while (powerButton);

    }
}