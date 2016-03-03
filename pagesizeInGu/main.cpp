#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QScreen>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQuickView view;

    QScreen* screen = QGuiApplication::primaryScreen();
    QSize screenSize =  screen->size();
    QQmlContext *ctxt = view.rootContext();
    ctxt->setContextProperty("screensize", QVariant::fromValue(screenSize));

    view.setSource(QUrl(QStringLiteral("qrc:///Main.qml")));
    view.setResizeMode(QQuickView::SizeRootObjectToView);

    view.show();
    return app.exec();
}

