

private ServiceConnection conn = new ServiceConnection() {
  @Override
  public void onServiceConnected(ComponentName name, IBinder service) {
    IRemoteService serviceProxy = IRemoteService.Stub.asInterface(service);
    MyData data = serviceProxy.getMyData(42);
  }
};


public class MyData implements Parcelable {
  private Integer val;
  public MyData(int _val) { this.val = _val; }
  
  @Override
  public void writeToParcel(Parcel dest, int flags) {
    dest.writeInt(val);
  }
}


parcelable MyData;

interface IRemoteService {
  MyData getMyData(int val);
}


public class RemoteService extends Service {
  @Override
  public IBinder onBind(Intent intent) { return binder; }

  private final IRemoteService.Stub binder = new IRemoteService.Stub() {
    @Override
    public MyData getMyData(int val) { 
      return new MyData(val); 
    }
  }
}



