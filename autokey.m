clc; clear all; close all;
disp('Encryption');
pt=input('Enter the Plaintext ','s');
k=input('Enter the Key ');
upt=upper(pt);
p=(abs(upt)-65);
for i1=1:1:length(upt)
    if i1==1
        cipos(i1)=mod((p(i1)+k),26);
    else
        cipos(i1)=mod((p(i1)+p(i1-1)),26);
    end
end
c=char(cipos+65);
z=sprintf('Cipher Text is: %s',c);
disp(z);
disp('Decryption');
c1=(abs(c)-65);
for j1=1:1:length(c1)
    if j1==1
        n(j1)=mod((c1(j1)-k),26);
    else
        n(j1)=mod((c1(j1)-n(j1-1)),26);
    end
end
m=char(n+65);
t=sprintf('Decrypted Text is: %s',m);
disp(t);


