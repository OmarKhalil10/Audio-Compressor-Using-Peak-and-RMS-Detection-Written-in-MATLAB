% Sound 1
folder_in = 'F:\5th level Semester (2)\DSP\audio-compressor\submission\sounds_before_compression';
folder_out = 'F:\5th level Semester (2)\DSP\audio-compressor\submission\sounds_after_compression';
baseFileName_1 = 'timpani-24bits-48kHz-mono.wav'; % Include extension
fullFileName_1 = fullfile(folder_in, baseFileName_1)
[y,Fs] = audioread(fullFileName_1); % Read into array
soundWave = figure('Name', 'Sound 1 Compression');
subplot(4, 1, 1);
plot(y(1:end, 1));
title('Plot of Uncompressed Signal');
%sound(y, Fs);

compressedY1 = simpleCompressor(y);
subplot(4,1,2);
plot(compressedY1(1:end, 1));
title('Plot of Compressed Signal: T=-10, R=5, M=0, detectionMode=peak');
%sound(compressedY1, Fs);

% Save the compressed audio data to a new file
out_1 = fullfile(folder_out, 'timpani-24bits-48kHz-mono-compressedY-peak.wav')
audiowrite(out_1, compressedY1, Fs);

compressedY2 = simpleCompressor(y, -10, 5, 0, 'RMS');
subplot(4,1,3);
plot(compressedY2(1:end, 1));
title('Plot of Compressed Signal: T=-10, R=5, M=0, detectionMode=RMS');
%sound(compressedY2, Fs);

% Save the compressed audio data to a new file
out_2 = fullfile(folder_out, 'timpani-24bits-48kHz-mono-compressedY2-RMS.wav')
audiowrite(out_2, compressedY2, Fs);

compressedY3 = simpleCompressor(y, -30, 5, 0, 'RMS');
subplot(4,1,4);
plot(compressedY3(1:end, 1));
title('Plot of Compressed Signal: T=-30, R=5, M=0, detectionMode=RMS');
%sound(compressedY3, Fs);

% Save the compressed audio data to a new file
out_3 = fullfile(folder_out, 'timpani-24bits-48kHz-mono-compressedY3-RMS.wav')
audiowrite(out_3, compressedY3, Fs);

% Sound 2
baseFileName_2 = 'disturb.wav'; % Include extension
fullFileName_2 = fullfile(folder_in, baseFileName_2)
[y,Fs] = audioread(fullFileName_2);
soundWave = figure('Name', 'Sound 2 Compression');
subplot(8, 1, 1);
plot(y(1:end, 1));
title('Plot of Uncompressed Signal');
subplot(8, 1, 2);
plot(y(1:end, 2));
title('Plot of Uncompressed Signal: Channel 2');
%sound(y, Fs);

compressedY11 = simpleCompressor(y, -10, 15);
subplot(8,1,3);
plot(compressedY11(1:end, 1));
title('Plot of Compressed Signal: T=-10, R=15, M=0, detectionMode=peak');
subplot(8,1,4);
plot(compressedY11(1:end, 2));
title('Plot of Compressed Signal: Channel 2');
%sound(compressedY11, Fs);

% Save the compressed audio data to a new file
out_4 = fullfile(folder_out, 'disturb-compressedY11-peak.wav')
audiowrite(out_4, compressedY11, Fs);

compressedY22 = simpleCompressor(y, -10, 5, 0, 'peak');
subplot(8,1,5);
plot(compressedY22(1:end, 1));
title('Plot of Compressed Signal: T=-10, R=5, M=0, detectionMode=peak');
subplot(8,1,6);
plot(compressedY22(1:end, 2));
title('Plot of Compressed Signal: Channel 2');
%sound(compressedY22, Fs);

% Save the compressed audio data to a new file
out_5 = fullfile(folder_out, 'disturb-compressedY22-peak.wav')
audiowrite(out_5, compressedY22, Fs);

compressedY33 = simpleCompressor(y, -10, 5, 24, 'RMS');
subplot(8,1,7);
plot(compressedY33(1:end, 1));
title('Plot of Compressed Signal: T=-10, R=5, M=24, detectionMode=RMS');
subplot(8,1,8);
plot(compressedY33(1:end, 2));
title('Plot of Compressed Signal: Channel 2');
%sound(compressedY33, Fs);

% Save the compressed audio data to a new file
out_6 = fullfile(folder_out, 'disturb-compressedY33-RMS.wav')
audiowrite(out_6, compressedY33, Fs);

% Sound 3
baseFileName_3 = 'r2d2.wav'; % Include extension
fullFileName_3 = fullfile(folder_in, baseFileName_3)
[y, Fs] = audioread(fullFileName_3);
soundWave = figure('Name', 'Sound 3 Compression');
subplot(4, 1, 1);
plot(y(1:end, 1));
title('Plot of Uncompressed Signal');
%sound(y, Fs);

compressedY111 = simpleCompressor(y, -20, 10, 10, 'peak');
subplot(4,1,2);
plot(compressedY111(1:end, 1));
title('Plot of Compressed Signal: T=-20, R=10, M=10, detectionMode=peak');
%sound(compressedY111, Fs);

% Save the compressed audio data to a new file
out_7 = fullfile(folder_out, 'r2d2-compressedY111-peak.wav')
audiowrite(out_7, compressedY111, Fs);

compressedY222 = simpleCompressor(y, -20, 10, 10, 'RMS');
subplot(4,1,3);
plot(compressedY222(1:end, 1));
title('Plot of Compressed Signal: T=-20, R=10, M=10, detectionMode=RMS');
%sound(compressedY222, Fs);

% Save the compressed audio data to a new file
out_8 = fullfile(folder_out, 'r2d2-compressedY222-RMS.wav')
audiowrite(out_8, compressedY222, Fs);

compressedY333 = simpleCompressor(y, -5, 1, 1, 'RMS');
subplot(4,1,4);
plot(compressedY333(1:end, 1));
title('Plot of Compressed Signal: T=-5, R=1, M=10, detectionMode=RMS');
%sound(compressedY333, Fs);

% Save the compressed audio data to a new file
out_9 = fullfile(folder_out, 'r2d2-compressedY333-RMS.wav')
audiowrite(out_9, compressedY333, Fs);
