setwd("C:/Users/Owner/Script2_iGA")
source("iGAaccurate.R")
source("db_iGAaccurate.R")
library(Rmpfr)

##glnR_activated

metric <- read.csv("metric.csv", row.names = 1)
metric <- metric
group_membership <- read.csv("group_membership_glnrA.csv", row.names = 1)
group_membership <- as.matrix(group_membership)
groups <- colnames(group_membership)
decreasing <- T
var.names <- rownames(metric)

out18h <- iGA_acc(metric = metric[,1],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out20h <- iGA_acc(metric = metric[,2],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out22h <- iGA_acc(metric = metric[,3],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out26h <- iGA_acc(metric = metric[,4],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out30h <- iGA_acc(metric = metric[,5],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out32h <- iGA_acc(metric = metric[,6],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out34h <- iGA_acc(metric = metric[,7],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out38h <- iGA_acc(metric = metric[,8],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out44h <- iGA_acc(metric = metric[,9],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out50h <- iGA_acc(metric = metric[,10],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

write.csv(out18h$summary, file="outputiGA18hglnrA.csv", row.names = F)
write.csv(out20h$summary, file="outputiGA20hglnrA.csv", row.names = F)
write.csv(out22h$summary, file="outputiGA22hglnrA.csv", row.names = F)
write.csv(out26h$summary, file="outputiGA26hglnrA.csv", row.names = F)
write.csv(out30h$summary, file="outputiGA30hglnrA.csv", row.names = F)
write.csv(out32h$summary, file="outputiGA32hglnrA.csv", row.names = F)
write.csv(out34h$summary, file="outputiGA34hglnrA.csv", row.names = F)
write.csv(out38h$summary, file="outputiGA38hglnrA.csv", row.names = F)
write.csv(out44h$summary, file="outputiGA44hglnrA.csv", row.names = F)
write.csv(out50h$summary, file="outputiGA50hglnrA.csv", row.names = F)

##glnR_repressed

metric <- read.csv("metric.csv", row.names = 1)
metric <- metric
group_membership <- read.csv("group_membership_glnrR.csv", row.names = 1)
group_membership <- as.matrix(group_membership)
groups <- colnames(group_membership)
decreasing <- F
var.names <- rownames(metric)

out18h <- iGA_acc(metric = metric[,1],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out20h <- iGA_acc(metric = metric[,2],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out22h <- iGA_acc(metric = metric[,3],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out26h <- iGA_acc(metric = metric[,4],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out30h <- iGA_acc(metric = metric[,5],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out32h <- iGA_acc(metric = metric[,6],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out34h <- iGA_acc(metric = metric[,7],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out38h <- iGA_acc(metric = metric[,8],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out44h <- iGA_acc(metric = metric[,9],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

out50h <- iGA_acc(metric = metric[,10],
                  group.membership = group_membership,
                  var.names = var.names,
                  groups = groups,
                  decreasing = decreasing)

write.csv(out18h$summary, file="outputiGA18hglnrR.csv", row.names = F)
write.csv(out20h$summary, file="outputiGA20hglnrR.csv", row.names = F)
write.csv(out22h$summary, file="outputiGA22hglnrR.csv", row.names = F)
write.csv(out26h$summary, file="outputiGA26hglnrR.csv", row.names = F)
write.csv(out30h$summary, file="outputiGA30hglnrR.csv", row.names = F)
write.csv(out32h$summary, file="outputiGA32hglnrR.csv", row.names = F)
write.csv(out34h$summary, file="outputiGA34hglnrR.csv", row.names = F)
write.csv(out38h$summary, file="outputiGA38hglnrR.csv", row.names = F)
write.csv(out44h$summary, file="outputiGA44hglnrR.csv", row.names = F)
write.csv(out50h$summary, file="outputiGA50hglnrR.csv", row.names = F)

