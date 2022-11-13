import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
  stable var currentValue: Float = 0;
  stable var startTimeNs = Time.now();
  Debug.print(debug_show(startTimeNs));
  // currentValue := 100;
  let id = 123456789;
  Debug.print(debug_show(currentValue));

  public func addFund(amount: Float) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  // addFund();

  public func withdrawFund(amount: Float) {
    let checkValue: Float =  currentValue - amount;
    if (checkValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Insufficient balance");
    }
  };

  public query func checkBalance() : async Float{
    Debug.print(debug_show(currentValue));
    return currentValue;
  };

  public func computeInterest() {
    let currentTimeNs = Time.now();
    let timeElapsedNs = currentTimeNs - startTimeNs;
    let timeElapsedS = timeElapsedNs / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTimeNs := currentTimeNs;
  };

  public query func getId() : async Nat{
    return id;
  };
}