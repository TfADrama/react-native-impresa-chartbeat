import { NativeModules } from 'react-native';

function Chartbeat() {
  const { setupTracker, callAnalytics } = NativeModules.RNImpresaChartbeat;

  const setup = () => {
    setupTracker(1111, 'domain');
  };

  const sendAnalytics = (message, title) => {
    callAnalytics(message, title);
  };

  return {
    setup,
    sendAnalytics,
  };
}

export default Chartbeat();

