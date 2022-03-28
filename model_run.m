load("Input")
Sim_Out = sim('PID_OPT');
ACE1 = Sim_Out.ACE1.Data;
ACE2 = Sim_Out.ACE2.Data;
df1 = Sim_Out.df1.Data;
df2 = Sim_Out.df2.Data;
df_tie = Sim_Out.df_tie.Data;
t_var = Sim_Out.tout;
cost = trapz(ACE1.^2+ACE2.^2);
rmse_df1 = rms(df1);
rmse_df2 = rms(df2);
rmse_df_tie = rms(df_tie);
stdv_df1 = std(df1);
stdv_df2 = std(df2);
stdv_df_tie = std(df_tie);

Step_df1=stepinfo(df1,t_var);
Step_df2=stepinfo(df2,t_var);
step_df_tie=stepinfo(df_tie,t_var);

save("Output")
%ACE1 = Sim_Out.ACE1.Data;
%ACE2 = Sim_Out.ACE2.Data;
%cost = trapz(ACE1.^2+ACE2.^2);