#include "screen.h"

Screen::Screen(QObject *parent) : QObject(parent)
{
	QScreen* screen = QGuiApplication::primaryScreen();
	QSize screenSize =  screen->size();
	qDebug() << "width: " << screenSize.width();
	m_width = screenSize.width();
	m_height = screenSize.height();
}
