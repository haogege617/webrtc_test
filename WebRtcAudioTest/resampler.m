% haos resample
clear 
clc
fid = fopen('micin.pcm','rb');
farend = fread(fid,inf,'int16');
fclose(fid);
fid = fopen('speaker.pcm','rb');
nearend = fread(fid,inf,'int16');
fclose(fid);
newfar = resample(farend,4,1);
newnear = resample(nearend,4,1);
fid = fopen('micinH.pcm','wb');
fwrite(fid,newfar,'int16');
fclose(fid);
fid = fopen('speakerH.pcm','wb');
fwrite(fid,newnear,'int16');
fclose(fid);