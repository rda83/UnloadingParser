﻿
#Область ОбработчикиСобытийФормы

&НаКлиенте
Процедура КаталогПоискаНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	ОписаниеОповещения = Новый ОписаниеОповещения("ОбработатьВыборФайла", ЭтаФорма);
	ДиалогОткрытияФайла = Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.ВыборКаталога);
	ДиалогОткрытияФайла.МножественныйВыбор = Ложь;
	ДиалогОткрытияФайла.Показать(ОписаниеОповещения);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура ИсправитьРегистры(Команда)
	ИсправитьРегистрыНаСервере();
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура ОбработатьВыборФайла(ПомещенныеФайлы, Параметры) Экспорт

    Если Не ПомещенныеФайлы.Количество() Тогда
        Возврат;
    КонецЕсли;
	
	Объект.КаталогПоиска = ПомещенныеФайлы[0]; 
	    
КонецПроцедуры // ()

&НаСервере
Процедура ИсправитьРегистрыНаСервере()
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект");
	ОбработкаОбъект.ИсправлениеРегистров();
КонецПроцедуры

#КонецОбласти
