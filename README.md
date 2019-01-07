
caplioさんのandroid_device_htc_dlxjを参考に作成しました。

# Build memo for HTX21 imnj

1.CMのダウンロード

　$ repo init -u git://github.com/CyanogenMod/android.git -b jellybean  
　$ repo sync  

2.デバイスファイルの用意

　https://github.com/solarisintel/twrp_device_htc_imnj.git  
　をgit cloneしてdevice/htc/imnj として配置。

3.TWRPをコピー

　https://github.com/TeamWin/Team-Win-Recovery-Project/ の内容で  
　bootable/recovery/ 以下を置き換える。  

  git clone https://github.com/TeamWin/Team-Win-Recovery-Project/ -b twrp2.7  

4.build twrp  

   以下を実行してbuild開始  

   $ . ./build/envsetup.sh    
   $ lunch cm_imnj-eng  
   $ make -j4 recoveryimage  
　　  
　　  
※ cleanは  
   $ make clobber  

