//
//  UpdateManager.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 22.02.2022.
//

import Foundation
import UIKit

protocol UpdateManagerDelegate: AnyObject {
    func didHandleUpdate()
}

final class UpdateManager {
    
    private var observers: [UpdateManagerDelegate] = [] //weak массив
    
    // Добавляем наблюдателя
    func addSubscriber(_ observer: UpdateManagerDelegate) {
        observers.append(observer)
    }
    
    // Перестаем наблюдать
    func unsubscribe(_ observer: UpdateManagerDelegate) {
        observers.removeAll { $0 === observer }
    }

    // Уведомляем подписчиков об изменениях
    private func didHandleUpdate() {
        observers.forEach { $0.didHandleUpdate() }
    }
}

final class MainViewController: UIViewController, UpdateManagerDelegate {
    
    let updateManager = UpdateManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateManager.addSubscriber(self)
    }
    
    func didHandleUpdate() {
        print("Update")
    }
}
