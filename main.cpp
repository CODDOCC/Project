#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlComponent>
#include <QtQuick>
#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
//    QQmlComponent component(&engine);
//    component.loadUrl(QUrl("qrc:/sticker_template.qml"));
//    QObject *object = component.create();
//    object->findChild<QObject*>("rect");
//    object->setProperty("width",500);
//    QQuickItem *item = qobject_cast<QQuickItem*>(object);
//    item->setParentItem(engine);
//    item->setWidth(400);
//    qDebug()<<component.errors()<<" ";//<<object->dumpObjectInfo()<<" "<< object->dumpObjectTree();
//    object->dumpObjectInfo();
//    object->dumpObjectTree();
//    delete object;
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    QQuickWindow *window = qobject_cast<QQuickWindow*>(engine.rootObjects().at(0));
    if (!window) {
        qFatal("Error: Your root item has to be a window.");
        return -1;
    }
    window->show();
    QQuickItem *root = window->contentItem();

    QQmlComponent component(&engine, QUrl("qrc:/sticker_template.qml"));
    QQuickItem *object = qobject_cast<QQuickItem*>(component.create());
    QQuickItem *object2 = qobject_cast<QQuickItem*>(component.create());

    //QQmlEngine::setObjectOwnership(object, QQmlEngine::CppOwnership);
    object->setParentItem(root);
    object->setParent(&engine);
    object2->setParentItem(root);
    object2->setParent(&engine);

    object->setProperty("color", QColor("red"));
    object2->setProperty("x",50);
    object2->setProperty("y",50);
    return app.exec();
}
