library(plotly)
library("gganimate")

n_agents <- 20
delta_t <- 1.0
alpha_vel <- 0.1
alpha_mean <- 0.1
n_epochs <- 300
map_size <- 100


initial_vs <- c()
for (a in seq(1:n_agents)) {
  v = rnorm(2, mean=0, sd=1)
  v <- v / Norm(v)
  initial_vs <- rbind(initial_vs, v)
}


data <- data.frame(epoch = rep(0, n_agents),
                   agent= seq(1:n_agents),
                   x = runif(n_agents, min=-map_size, max=map_size),
                   y = runif(n_agents, min=-map_size, max=map_size),
                   vx = initial_vs[,1],
                   vy = initial_vs[,2])

for (t in seq(2:n_epochs)) {
     mean_x <- mean(data[data$epoch==t-1, "x"])
     mean_y <- mean(data[data$epoch==t-1, "x"])
     mean_vx = mean(data[data$epoch==t-1, "vx"])
     mean_vy = mean(data[data$epoch==t-1, "vy"])
     n_v <- Norm(c(mean_vx, mean_vy))
     for (a in unique(data$agent)) {
       ag = data[(data$epoch == t-1 & data$agent == a),]
       dv <- c(ag$vx, ag$vy) + alpha_vel * c(mean_vx, mean_vy) + alpha_mean * (c(mean_x, mean_y) - c(ag$x, ag$y))
       dv <- dv / Norm(dv)

       data <- rbind(data, data.frame(epoch = t,
                              agent = ag$agent,
                              x = ag$x + dv[1],
                              y = ag$y + dv[2],
                              vx = dv[1],
                              vy = dv[2]))
     }
}

data


p <- ggplot(data, aes(x=x, y = y)) + 
  geom_point() +
  transition_time(epoch) +
  labs(title = 'Epoch: {frame_time}') + 
  ease_aes('linear')

animate(p, nframes=150)



