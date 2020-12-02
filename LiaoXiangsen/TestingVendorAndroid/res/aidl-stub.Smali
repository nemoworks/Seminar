

.class public abstract Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;
.implements Lcom/miui/daemon/performance/server/IMiuiPerfService;

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :sswitch_8
    const-string/jumbo v2, "com.miui.daemon.performance.server.IMiuiPerfService"
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    
    const/4 v2, 0x1
    return v2

    :sswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I
    invoke-virtual {p0, v2}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->zg(I)V
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1
    return v2

    .sparse-switch
        0x4 -> :sswitch_60
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method


