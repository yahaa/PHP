Attribute VB_Name = "Module2"


Const SND_SYNC = &H0
Const SND_ASYNC = &H1
Const SND_NODEFAULT = &H2
Const SND_LOOP = &H8
Const SND_NOSTOP = &H10
Public Declare Function sndPlaySoundStop Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As Long, ByVal uFlags As Long) As Long
Public Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long



Public Sub playsound1()
    
        sndPlaySound App.Path + "\vid\1.wav", SND_ASYNC
  
End Sub

Public Sub playsound2()
    
        sndPlaySound App.Path + "\vid\2.wav", SND_ASYNC
  
End Sub
Public Sub playsound3()
    
        sndPlaySound App.Path + "\vid\3.wav", SND_ASYNC
  
End Sub
Public Sub playsound4()
    
        sndPlaySound App.Path + "\vid\4.wav", SND_ASYNC
  
End Sub
Public Sub playsound5()
    
        sndPlaySound App.Path + "\vid\5.wav", SND_ASYNC
  
End Sub
Public Sub playsound6()
    
        sndPlaySound App.Path + "\vid\6.wav", SND_ASYNC
  
End Sub
Public Sub playsound7()
    
        sndPlaySound App.Path + "\vid\7.wav", SND_ASYNC
  
End Sub
Public Sub stopsound()
    sndPlaySoundStop 0, SND_SYNC
End Sub
