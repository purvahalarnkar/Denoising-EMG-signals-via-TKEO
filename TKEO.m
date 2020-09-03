clc
clear all 
close all

load emg4TKEO.mat %import data

%% Apply TKEO
emgfilt=emg; %initialize filtered signal
for i=2:length(emgfilt)-1 %do not consider first and last time points to avoid edge effects
    emgfilt(i)=emg(i)^2-emg(i-1)*emg(i+1); %TKEO
end

%% Convert to zscore
time0=dsearchn(emgtime',0); %find timepoint 0
emgZ=(emg-mean(emg(1:time0)))/std(emg(1:time0)); %zscore of original emg signal
emgfiltZ=(emgfilt-mean(emgfilt(1:time0)))/std(emgfilt(1:time0)); %zscore of filtered emg signal

%% Plot
emgnorm=emg./max(emg); %normalize original emg signal
emgfiltnorm=emgfilt./max(emgfilt); %normalize filtered emg signal
subplot(211)
plot(emgtime,emgnorm,'k')
hold on
plot(emgtime,emgfiltnorm,'r')
legend('Original','Filtered')
title('EMG energy (TKEO)')
xlabel('Time (ms)')
ylabel('Amplitude')
subplot(212)
plot(emgtime,emgZ,'k') %plot zscore of original emg signal
hold on
plot(emgtime,emgfiltZ,'r') %plot zscore of filtered emg signal
legend('Original','Filtered')
title('Zscore of EMG')
xlabel('Time (ms)')
ylabel('Zscore')