import { NativeModules } from "react-native";

function Chartbeat() {
  const { setupTracker, callAnalytics } = NativeModules.RNImpresaNetscope;

  return {
    setupTracker: (accountId, domain) => {
      setupTracker(accountId, domain);
    },
    sendAnalytics: (message, title) => {
      callAnalytics(message, title);
    }
  };
}

export default Chartbeat();
