#!/usr/bin/env python
from Foundation import NSUserNotification
from Foundation import NSUserNotificationCenter
from optparse import OptionParser
 
 
 
def main():
    parser = OptionParser(usage='%prog -t TITLE -m MESSAGE')
    parser.add_option('-t', '--title', action='store', default='A title')
    parser.add_option('-m', '--message', action='store', default='...')

    options, args = parser.parse_args()
 
    notification = NSUserNotification.alloc().init()
    notification.setTitle_(options.title)
    notification.setInformativeText_(options.message)

    center = NSUserNotificationCenter.defaultUserNotificationCenter()
    center.deliverNotification_(notification)
 
 
if __name__ == '__main__':
    main()