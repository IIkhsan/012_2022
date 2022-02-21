#  VIPER

View - выступает UIViewController
Interactor - слой, который отвечает за получение данных, бизнес логику (кеширование, бекапы и прочее)
Presenter - посредник подготавливающий данные для view и обрабатывающий различные события из View
Entity - чаще всего это общая модель, которая испольщуется в интеракторе, например мы можем иметь несколько моделей для базы данных и для получения данных из сети
Router - данный слой отвечает за открытие новых экранов и переходы на новые VIPER модули 