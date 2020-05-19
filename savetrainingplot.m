function stop=savetrainingplot(info)
stop=false;  %prevents this function from ending trainNetwork prematurely
if info.State=='done'   %check if all iterations have completed
% if true
       % saveas(gcf,'training_process.png')  % save figure as .png, you can change this
       NNET_CNN= findall(groot, 'Type', 'Figure');
      saveas(NNET_CNN(end),strcat('training_process_resnet50_',num2str(randi(25,1,1)),'.jpg'));
      
end
end
% function stop=savetrainingplot(info)
% stop=false;  %prevents this function from ending trainNetwork prematurely
% if info.State=='done'   %check if all iterations have completed
% % if true
%       saveas(findall(groot, 'Type', 'Figure'),'training_process.jpg')  % save figure as .png, you can change this
%       
%       saveas(findall(groot, 'Type', 'Figure'),'training_process.fig')
%       
% %       savefig(findall(groot, 'Type', 'Figure'),'training_process.fig')
% end
% end