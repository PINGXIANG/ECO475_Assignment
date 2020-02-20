library(haven)
hw1data = read_dta("hw1data.dta")
attach(hw1data)
# View(hw1data)

probit = glm(y ~ x1+x2+x3+x4+x5+x6, family = binomial(link = "probit"), 
                data = hw1data)
summary(probit)

beta_probit = summary(probit)$coefficient[1:7]
unit_beta_probit = beta_probit/sqrt(sum(beta_probit^2)) 


library("margins")
margins(probit)
summary(margins(probit, variables = "x2"))

margins(probit, variables = "x2", at = list(x2 = 0:1))
summary(margins(probit, variables = "x2", at = list(x2 = 0:1)))

logit = glm(y ~ x1+x2+x3+x4+x5+x6, family = binomial(link = "logit"), 
             data = hw1data)
summary(logit)

beta_logit = summary(logit)$coefficient[1:7]
unit_beta_logit = beta_logit/sqrt(sum(beta_logit^2)) 

