#ifndef SCREEN_H
#define SCREEN_H

#include <QObject>
#include <QGuiApplication>
#include <QScreen>
#include <QDebug>

class Screen : public QObject
{
    Q_OBJECT

public:
    Q_PROPERTY(int height READ height)
    Q_PROPERTY(int width READ width)
    explicit Screen(QObject *parent = 0); 
    int height() { return m_height; };
    int width() { return m_width; };

private:
    int m_height;
    int m_width;
};

#endif // FILEIO_H
