#include "subcalc.h"

#include <QDebug>
#include<iostream>

SubCalc::SubCalc() {

}

QString SubCalc::fs() const {
    return m_fs;
}

void SubCalc::setFs(QString s) {
    m_fs = s;
    //std::cout << s << std::endl;
}
