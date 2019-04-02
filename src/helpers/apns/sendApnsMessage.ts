import apn from 'apn';
import fs from 'fs';
import path from 'path';
import logger from '../../config/logger';

const CERT_FILE = fs
  .readFileSync(path.resolve(__dirname, 'cert.pem'), 'UTF-8')
  .toString();
const KEY_FILE = fs
  .readFileSync(path.resolve(__dirname, 'key.pem'), 'UTF-8')
  .toString();
const BUNDLE_ID = 'com.mindpumpmedia.maps';

const sendMessage = async messageDatas => {
  const service = new apn.Provider({
    cert: CERT_FILE,
    key: KEY_FILE,
    production: true,
  });

  await Promise.all(
    messageDatas.map(async ({ token, message }) => {
      const note = new apn.Notification();
      note.alert = message;

      // The topic is usually the bundle identifier of your application.
      note.topic = BUNDLE_ID;

      // @ts-ignore
      logger.info(`Sending: ${note.compile()} to ${token}`);

      try {
        const result = await service.send(note, token);
        logger.info(result);
      } catch (error) {
        logger.info(error);
      }
    })
  );

  // For one-shot notification tasks you may wish to shutdown the connection
  // after everything is sent, but only call shutdown if you need your
  // application to terminate.
  service.shutdown();
};

export default sendMessage;
