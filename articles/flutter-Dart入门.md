## 为什么要学习 Dart

Dart 是一门面向对象的语言，由 Google 主导开发， 于 2011 年 10 月对外开放，其目标在于成为下一代结构化 Web 开发语言。 目前 Google 的移动 UI 框架 Flutter，就是使用的 Dart 语言。如果你想利用 Flutter 快速在 iOS 和 Android 上构建高质量的原生用户界面，那么 Dart 是必须要学习的。

---

## 重要概念

学习 Dart 语言，有以下几点是需要记住的：

- 所有的变量都是对象，number、bool、function、null 等都是对象，都继承自 Object；
- 标识符以\_开头，那就代表这个变量或者方法是私有。
- 类型声明不是必须的，Dart 能够推导出变量的类型

---

### 变量

```dart
var lang = 'dart'
```

声明了一个 lang 变量并初始化，值为一个 String 对象的引用，其值为 'dart' 。
虽然这里用是的 var，但是 Dart 是可以根据值 'dart' 推导出这是一个字符串，这跟下面的方式是一样的

```dart
String lang = 'dart'
```

假如将来你会给 lang 赋值一个数字或布尔值，不想限制为字符串，那么可以这样

```dart
dynamic lang = 'dart'
```

假如你定义了一个值，但之后并不会改变这个变量的值，也就是平时所说的常量时，可以用 `final` 或 `const`

```dart
final var lang = 'dart'
final String lang  = 'dart'
```

当尝试改变其值时，会有错误抛出

```dart
lang = 'javascript' // Error: a final variable can only be set once.
```

当你声明了一个变量但没有初始化时，是会有一个默认值的，也就是

```dart
var lang
assert(lang == null) // => true
```

#### Numbers

Dart 的 number 有 int 和 double 两种类型，如果一个变量没有小数，那就是 int， 反之则是 double

```dart
var x = 1 // int x = 1

var y = 1.1 // double y = 1.1
```

#### Strings

你可以用单引号 `''` 或者双引号 `""` 包裹字符来声明字符串。

```dart
// 单行字符串
var s = 'flutter study'

// 多行字符串
var ss = '''
  first line
  sencond line
'''
```

你也可以用 `+` 来连接多个字符串

```dart
var s1 = 'hello'
var s2 = 'dart'
var s3 = s1 + s2 + '!'
```

#### Lists

list，跟其他语言所说的数组是类似的。

```dart
var list = [1, 2, 3];

assert(list.length == 3) // => true

list[0] // => 1
```

#### Maps

map，键值对的集合。

```dart
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

assert(gifts['first'] == 'partridge') // => true
assert(gifts.length == 3) // => true, map是有length属性的
```

#### Functions

```dart
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

isNoble(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}
```

上面是一个简单的函数声明示例，bool 代表函数返回值的类型，括号里的`int atomicNumber`，表示参数是一个 int 类型的变量，当然，这些类型声明都是可选的， 所以上面两种写法都是 ok 的。

Dart 的函数的参数是可分为必须和可选的，当必须时，需要在参数前加上`@required`

```dart
const Scrollbar({Key key, @required Widget child})
```

当可选时，用`[]`包裹

```dart
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
```

### Control flow statements

- if and else
- for loops
- while and do-while loops
- break and continue
- switch and case
- assert

这些流程控制  基本上跟其他语言是一致的。

#### If and else

```dart
if (isRaining()) {
  you.bringRainCoat();
} else if (isSnowing()) {
  you.wearJacket();
} else {
  car.putTopDown();
}
```

需要注意的是，有一些语言，如 javascript，是可以支持判断条件的表达式不是一个 bool 值，但 dart 要求必须是 bool 值。

#### Assert

```dart
// Make sure the variable has a non-null value.
assert(text != null);

// Make sure the value is less than 100.
assert(number < 100);
```

Assert 声明仅在开发环境有效，生产环境默认会被忽略。

### Classes

#### 构造函数

```dart
class Point {
  num x, y;

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point(this.x, this.y);
}
```

#### 使用构造函数

```dart
var p = Point(2, 2);
var p1 = new Point(2, 2); // 在 Dart 2 中，new 关键词是可选的了。

// Set the value of the instance variable y.
p.y = 3;

// Get the value of y.
assert(p.y == 3);

```

很多时候， 当 p 的值为空值时，上面的赋值是会报错的，为了不让这个错误发生， 可以用 `?.` 来代替 `.`

```dart
p?.y = 4 // 当 p 的值不为空时，才去设置它的 y 值
```

### 枚举类型

```dart
enum Color { red, green, blue }

assert(Color.red.index == 0);
assert(Color.green.index == 1);
assert(Color.blue.index == 2);
```

### 使用库

```dart
import 'dart:html';
```

## 参考资料

[A Tour of the Dart Language](https://www.dartlang.org/guides/language/language-tour)
