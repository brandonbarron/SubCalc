#ifndef SUBCALC_H
#define SUBCALC_H

#include <QObject>
#include<string>

class SubCalc : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString fs READ fs WRITE setFs)
public:
    SubCalc();

    QString fs() const;
    void setFs(QString);


private:
    QString m_fs;

};




#endif // SUBCALC_H
