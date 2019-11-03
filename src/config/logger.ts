import isObject from 'lodash/isObject';
import trimEnd from 'lodash/trimEnd';
import path from 'path';
import { SPLAT } from 'triple-beam';
import winston, { format } from 'winston';

export const isProduction = process.env.NODE_ENV === 'production';

const all = format(info => {
  const splat = info[SPLAT] || [];

  const isSplatTypeMessage =
    typeof info.message === 'string' &&
    (info.message.includes('%s') ||
      info.message.includes('%d') ||
      info.message.includes('%j'));
  if (isSplatTypeMessage) {
    return info;
  }
  const message = formatObject(info.message);
  const rest = splat.map(formatObject).join(' ');
  info.message = trimEnd(`${message} ${rest}`);
  return info;
});

function formatObject(param) {
  if (isObject(param)) {
    return JSON.stringify(param);
  }
  return param;
}

const logger = winston.createLogger({
  level: isProduction ? 'info' : 'debug',
  format: format.combine(
    all(),
    format.label({
      label: path.basename(
        process.mainModule ? process.mainModule.filename : ''
      ),
    }),
    format.colorize(),
    format.timestamp({ format: 'YYYY-MM-DD HH:mm:ss' }),
    format.printf(
      info => `${info.timestamp} [${info.label}] ${info.level}: ${info.message}`
    )
  ),
  transports: [new winston.transports.Console()],
});

export default logger;