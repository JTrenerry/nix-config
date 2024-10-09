import { Bar } from './widget/bar/Bar';
import { NotificationPopups } from './widget/notifications/Notify'

import { forMonitors } from './lib/utils'

App.config({
    style: "./style.css",
    windows: [
        ...forMonitors(Bar),
        NotificationPopups(1),
    ]
})
