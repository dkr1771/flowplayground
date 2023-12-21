this a coded in cadence language which is an resource oriented program .we can use flowplayground to run this code.

in authentication .cdc

this is a smart contract called authentication in which a pub var called comapanyProfile which is of type dictionary.
it have structure called compProfiles which has 5 fields[first name,last name,salary ,age,employeeId]

then intilalize the as arugrment.then pass assign this passed argument to corresponding field of struct.

**Functions:**
  - `addProfile`: Adds a new employee profile to the `companyProfile` dictionary.

  - then initalize a empty dictionary

  - ** Transaction.cdc
  - Import Statement: It imports the Authentication module from 0x05. The 0x05 likely refers to the address or identifier of the smart contract where the Authentication module resides.

Transaction Function:

The function is named transaction and takes in parameters like firstName, lastName, salary, age, and employeeId.

It contains two main sections: prepare and execute.

prepare: This section is currently empty, but typically it would involve preparing the transaction, verifying permissions, or checking conditions before executing the main logic.

execute: Within this section, the code executes the addProfile function from the Authentication module. It passes the provided parameters (firstName, lastName, salary, age, employeeId) to the addProfile function.

After adding the profile, it logs a success message using log.


** script.cdc

The function is named main and marked as pub (public), indicating it can be accessed from outside the contract.

It takes in a parameter employeeId of type UInt64.

Inside the function, it returns the company profile associated with the provided employeeId from the Authentication contract's companyProfile storage variable.

The ! operator used after Authentication.companyProfile[employeeId] implies that the contract assumes the profile for the given employeeId always exists in the companyProfile map.
! we use this because to force unwrapp it.dictionary also return optional type to prevent it we use !symbol during returning.

thankxxx
