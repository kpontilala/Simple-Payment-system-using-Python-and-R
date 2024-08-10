# Assigning constant

salary_range <- c(1000, 50000) #salary range
gender <- c("male", "female")  #gender 
no_employees <- 500   #number of employees
paylist <- list ()    #empty list of employees

#creating a function for our list of workers
employees <- function(no_employees){
  
  for (i in 1:no_employees) {
    Gender <- sample(gender, 1)
    Salary <- sample(seq(salary_range[1], salary_range[2]), 1)
    
    Level  <- 'NA'
    
    if (Salary > 10000 & Salary < 20000){
      Level <- 'A1'  }
    else if (Salary > 7500 & Salary < 30000 & Gender == 'female'){
      Level <- 'A5-F' }
    
    paylist[[i]] <- list(
      'id' = i,
      'Salary' = paste0("$", format(Salary, big.mark=",")),
      'Gender' = Gender,
      'Level'  = Level
    )
  return(paylist)  
  }
}

final_paylist <- employees(no_employees) #final payslip that contains our full staff

final_paylist[]
