# source data import and tidy script
if (!exists(".setup_sourced")) source(here::here("data_import_tidy.R"))

# wrangle data (sheet 7)
# graph 1
sheet_7 %>%
  filter(! career_stage == "0.0") %>%
  group_by(attendance, career_stage) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = career_stage, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "Career stage", title = "Career Stage/attendance type of Participants",
                    subtitle = "1.0 = student/trainee; 2.0 = early career < 5; 3.0 = mid career 5+") +
  scale_fill_manual(values=c("seagreen4", "blue4", "orange"))
  
 
# graph 2
sheet_7 %>%
  filter(! career_stage == "0.0") %>%
  group_by(attendance, career_stage) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = attendance, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "Attendance", title = "Attendance types",
                    subtitle = "") +
  scale_fill_manual(values=c("seagreen4", "blue4", "orange")) 


# graph 3
sheet_7 %>%
  filter(! attendance == "NA") %>%
  group_by(attendance, overall) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = overall, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "Overall ratings", title = "Overall experience  by attendance at CSPC",
                    subtitle = "") +
  scale_fill_manual(values=c("seagreen4", "blue4", "darkorange3", "cyan4", "gold1")) 
  

# graph 4
sheet_7 %>%
  filter(! attendance == "NA") %>%
  group_by(attendance, forum) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = forum, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "Forum ratings", title = "Did CSPC act as a forum",
                    subtitle = "for the exploration of issues in science, technology, and innovation policy") +
  scale_fill_manual(values=c("seagreen4", "blue4", "darkorange3", "cyan4", "gold1")) 


# graph 5
sheet_7 %>%
  filter(! connections == "NA") %>%
  group_by(attendance, connections) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = connections, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "Connections ratings", title = "Did CSPC strengthen connections ",
                    subtitle = "between science stakeholders and sectors of society") +
  scale_fill_manual(values=c("seagreen4", "blue4", "darkorange3", "cyan4", "gold1")) 


# graph 6
sheet_7 %>%
  filter(! connections == "NA") %>%
  group_by(attendance, capacity) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = capacity, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "Capacity ratings", title = "Did CSPC build capacity",
                    subtitle = "for the next generation of science policy experts") +
  scale_fill_manual(values=c("seagreen4", "blue4", "darkorange3", "cyan4", "gold1")) 

# graph 7
sheet_7 %>%
  filter(! connections == "NA") %>%
  group_by(attendance, engagement) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = engagement, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "Engagement ratings", title = "Did CSPC promote",
                    subtitle = "and /or engaged in research and analysis in science policy") +
  scale_fill_manual(values=c("seagreen4", "blue4", "darkorange3", "cyan4", "gold1")) 


# graph 8
sheet_7 %>%
  filter(! connections == "NA") %>%
  group_by(attendance, welcomed) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = welcomed, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "Welcome ratings", title = "Did CSPC make you feel welcomed?",
                    subtitle = "") +
  scale_fill_manual(values=c("seagreen4", "blue4", "darkorange3", "cyan4", "gold1")) 


# graph 9
sheet_7 %>%
  filter(! connections == "NA") %>%
  group_by(attendance, edi) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = edi, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "EDI ratings", title = "Did CSPC reflect commitment to",
                    subtitle = "diversity, accessibility, inclusion, and equity?") +
  scale_fill_manual(values=c("seagreen4", "blue4", "darkorange3", "cyan4", "gold1")) 


# graph 10
sheet_7 %>%
  filter(! connections == "NA") %>%
  group_by(attendance, diversity) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = diversity, y = count, fill = attendance)) +
  geom_bar(stat = "identity") + 
  coord_flip() +
  theme_bw() + labs(x = "Diversity ratings", title = "Did CSPC include",
                    subtitle = "representation of diverse individual and organizational perspectives") +
  scale_fill_manual(values=c("seagreen4", "blue4", "darkorange3", "cyan4", "gold1")) 


